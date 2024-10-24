#include <8051.h>
#include "global.h"
#include "main.h"
#include "./screen/screen.h"
#include "./button/button.h"
#include "./blink/blink.h"
#include "./led/led.h"
#include "./I2C/I2C.h"
#include "./lcd/lcd.h"

void init_debounce_timer(void);

void main(void){
    init_display();
    init_debounce_timer();

    //display accepts 2 strings and the starting index of each line
    display_2("Hello World", "Bob is Great!", 0,3);

    while(1){
        display_poll();
        button_poll();
        display();
        blink();
        I2C_poll();
    }
}

void init_debounce_timer(void){
    TMOD = 0x01;
    TH0 = 0x00;
    TL0 = 0x00;
    TR0 = 1;
}
