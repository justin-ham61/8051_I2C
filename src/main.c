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
    ET1 = 1;
    EA = 1;
}

void Timer1_ISR(void) __interrupt (3) {
	TF1 = 0;
	TH1 = 0;
	TL1 = 0;
	TR1 = 1;
	BLINK_COUNTER++;
}
