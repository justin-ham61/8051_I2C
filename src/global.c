#include <8051.h>
#include "global.h"

int SCREEN_FLAG = 0x00;
int BLINK_MODE = 0;

void reset_timer(void){
	TR0 = 0;
	TH0 = 0x00;
	TL0 = 0x00;
	TF0 = 0;
	TR0 = 1;
}

void delay(int i){
    int j, k;
	for (j = i; j > 0; j--)
		for (k = 125; k > 0; k--);
}