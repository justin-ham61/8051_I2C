#include <8051.h>
#include "global.h"
#include "main.h"
#include "./screen/screen.h"
#include "./button/button.h"
#include "./blink/blink.h"
#include "./I2C/I2C.h"
#include "./lcd/lcd.h"

void init_debounce_timer(void);
void init_blink_timer(void);
void blink_timer(void);

void main(void){
    TMOD = 0x01;
    init_display();
    init_debounce_timer();
    init_blink_timer();

    //display accepts 2 strings and the starting index of each line
    display_2("Hello World", "Bob is Great!", 0,3);

    while(1){
        display_poll();
        button_poll();
        display();
        blink();
        I2C_poll();
        blink_timer();
    }
}

void init_debounce_timer(void){
    TH0 = 0x00;
    TL0 = 0x00;
    TR0 = 1;
}

void init_blink_timer(void){
    TH1 = 0x00;
    TL1 = 0x00;
    TR1 = 1;
}

void blink_timer(void){
    if(TF1 == 1){
        TR1 = 0;
        BLINK_COUNTER++;
        TH1 = 0;
        TL1 = 0;
        TF1 = 0;
        TR1 = 1;
    }
}
