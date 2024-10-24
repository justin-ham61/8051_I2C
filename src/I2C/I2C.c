#include <8051.h>
#include "I2C.h"
#include "../global.h"

void dout_Handler(void);
void stpcon_Handler(void);
void stcon_Handler(void);
void read_Handler(void);
void next_handle(int current_step);

//0 is reading buttons, 1 is output to led
static I2C I2C_STATE = {0, 0x40, 0x41, 0, 0x00, 0x00, 1};

void I2C_poll(void){
    switch(I2C_STATE.POLLING_MODE){
        //Send start condition
        case 0: 
            if(TF0 == 1){
                reset_timer();
                stcon_Handler();
                next_handle(I2C_STATE.POLLING_MODE);
                return;
            }
            break;
        //Reading data
        case 1:
            dout_Handler();
            break;
        //Send Stop condition
        case 2: 
            stpcon_Handler();
            break;
        case 3: 
            read_Handler();
            break;
        default:
            break;
    }
    if(I2C_STATE.POLLING_MODE != 0){
        next_handle(I2C_STATE.POLLING_MODE);
    }
}

void next_handle(int current_step){
    switch (current_step)
    {
    //Where to go after start condition
    case 0:
        I2C_STATE.POLLING_MODE = 1;
        I2C_STATE.ADR_SENT = 0;
        if(I2C_STATE.WRITE_AVAIL == 0){
            I2C_STATE.SHIFT_OUT_DATA = I2C_STATE.READ_ADR;
        } else {
            I2C_STATE.SHIFT_OUT_DATA = I2C_STATE.WRITE_ADR;
        }
        break;
    //Where to go after data write
    case 1:
        if(I2C_STATE.ADR_SENT == 0 && I2C_STATE.WRITE_AVAIL == 0){
            I2C_STATE.ADR_SENT = 1;
            I2C_STATE.POLLING_MODE = 3;
        //Send to write data mode
        } else if (I2C_STATE.ADR_SENT == 0 && I2C_STATE.WRITE_AVAIL == 1){
            I2C_STATE.ADR_SENT = 1;
            I2C_STATE.WRITE_AVAIL = 0;
            I2C_STATE.SHIFT_OUT_DATA = (~I2C_STATE.READ_DATA & 0xF0);
            I2C_STATE.POLLING_MODE = 1;
        //Send to stop condition
        }else {
            I2C_STATE.POLLING_MODE = 2;
        }
        break;
    //Where to go after stop condition
    case 2: 
        I2C_STATE.POLLING_MODE = 0;
        break;
    case 3: 
        I2C_STATE.POLLING_MODE = 2;
        break;
    default:
        break;
    }
}

void stcon_Handler(void){
    P2_6 = 1; 
    P2_7 = 1;
    P2_6 = 0;
    P2_7 = 0;
}


void dout_Handler(void){
    for(int i = 0; i < 8; i++){
        P2_6 = (I2C_STATE.SHIFT_OUT_DATA & 0x80) ? 1 : 0;
        P2_7 = 1;
        P2_7 = 0;
        I2C_STATE.SHIFT_OUT_DATA <<= 1;
    }
    //Acknowledge
    P2_6 = 1;
    P2_7 = 1;
    P2_7 = 0;
}

void stpcon_Handler(void){
    P2_6 = 0;
    P2_7 = 1;
    P2_6 = 1;
    P2_7 = 0;
}



void read_Handler(void){
    for(int i = 0; i < 8; i++){
        P2_7 = 1;
        I2C_STATE.READ_DATA <<= 1;
        if(P2_6){
            I2C_STATE.READ_DATA |= 0x01;
        }
        P2_7 = 0;
    }

    //Acknowledge
    P2_6 = 1;
    P2_7 = 1;
    P2_7 = 0;

    //Process Readings, NEW LED DATA
    I2C_STATE.READ_DATA <<= 4;
    I2C_STATE.WRITE_AVAIL = 1;
}