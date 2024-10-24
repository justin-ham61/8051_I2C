#include <8051.h>
#include "../global.h"
#include "blink.h"
//All LEDs are on P1, each bit on 0000 0000 control each LED
//0 is on
//1 is off

static int binary_num;

static int cyclone = 1;
static int direction = 0;
static int counter; 

static int dual_cyclone = 1;
static int reverse_cyclone = 0b10000000;
static int dual_direction = 0;

void blink(void){
	if(counter < 50){
		counter++;
		return;
	}
	int mode = BLINK_MODE;
	switch(mode){
		case 0:
			P1 = ~(binary_num);
			binary_num = (binary_num + 1) % 256;
			counter = 0;
			break;
		case 1:
			P1 = ~(cyclone);
			if(cyclone == 0b10000000 && direction == 0){
				direction = 1;
			} else if (cyclone == 1 && direction == 1){
				direction = 0;
			}

			if(direction == 0){
				cyclone <<= 1;
			} else {
				cyclone >>= 1;
			}
			counter = 0;
			break;
		case 2:
			P1 = ~(dual_cyclone | reverse_cyclone);
			if(reverse_cyclone == 1 && dual_direction == 0){
				dual_direction = 1;
			} else if (dual_cyclone == 1 && dual_direction == 1){
				dual_direction = 0;
			}

			if(dual_direction == 0){
				dual_cyclone <<= 1;
				reverse_cyclone >>= 1;
			} else {
				dual_cyclone >>= 1;
				reverse_cyclone <<= 1;
			}
			counter = 0;
			break;
		default:
			counter = 0;
			break;
	}
}