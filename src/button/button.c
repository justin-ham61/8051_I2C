#include <8051.h>
#include "../global.h"
#include "button.h"

void button_poll(void);
void button_handle(int button_press);

static int S1_COUNT;
static int S2_COUNT;
static int S3_COUNT;
static int S4_COUNT;

//K1 - K4 are the button registers
void button_poll(void){
    int button_press = 0x00;
    int pressed = 0x00;
    //S1
    if(P3_5 == 0){
        S1_COUNT++;
    } else if (S1_COUNT > 4){
        button_press |= 0x08;
        S1_COUNT = 0;
    }

    //S2
    if(P3_4 == 0){
        S2_COUNT++;
    } else if (S2_COUNT > 4){
        button_press |= 0x04;
        S2_COUNT = 0;
    }

    //S3
    //Increment value
    if(P3_3 == 0){
        S3_COUNT++;
    } else if (S3_COUNT > 4){
        button_press |= 0x02;
        S3_COUNT = 0;
    }

    //S4
    //Decrement value
    if(P3_2 == 0){
        S4_COUNT++;
    } else if (S4_COUNT > 4){
        button_press |= 0x01;
        S4_COUNT = 0;
    }
    button_handle(button_press);
}

//handle each button press 1111
void button_handle(int button_press){
    //Check LSBFirst and handle
    //first has to increment
    //second has to decrement
    //third has nothing
    //fourth has to change the LED modes 

    if(button_press & 1){
        SCREEN_FLAG = 0x0F;
        //decrement screen
    }
    
    button_press >>= 1;

    if(button_press & 1){
        SCREEN_FLAG = 0xF0;
        //increment screen
    }

    button_press >>= 1; 
    
    if(button_press & 1){
        //do nothign
    }

    button_press >>= 1; 

    if(button_press & 1){
        //Change light modes
        BLINK_MODE = (BLINK_MODE + 1) % 3;
    }
        

}

