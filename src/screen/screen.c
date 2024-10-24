#include <8051.h>
#include "../global.h"
#include "../button/button.h"

void display_poll(void);
void display(void);

int table[10] = { 
    0xc0, 0xf9, 0xa4, 
    0xb0, 0x99, 0x92, 
    0x82, 0xf8, 0x80, 
    0x90
};

//Current count value
int vals[4] = {0, 0, 0, 0};
int current_val = 0; 

void display_poll(void)
{

    if((SCREEN_FLAG & 0xF0) == 0xF0){
        int carry = 1;
        int idx = 0;
        while(carry == 1 && current_val < 9999){
            if(idx > 4){
                for(int i = 0; i < 4; i++){
                    vals[i] = 0;
                }
                current_val = 0;
                break;
            }
            if(vals[idx] == 9){
                vals[idx] = 0;
                idx++;
            } else {
                vals[idx] += carry;
                carry = 0;
            }
            current_val++;
        }
    }
    if((SCREEN_FLAG & 0x0F) == 0x0F){
        int minus_carry = 1;
        int idx = 0;
        while(minus_carry == 1 && current_val > 0){
            if(idx > 4){
                for(int i = 0; i < 4; i++){
                    vals[i] = 0;
                }
                current_val = 0;
                break;
            }
            if(vals[idx] == 0){
                vals[idx] = 9;
                idx++;
            } else {
                vals[idx] -= minus_carry;
                minus_carry = 0;
            }
            current_val--;
        }
    }
    SCREEN_FLAG = 0x00;
}


void display(void)
{
    //Load value to register
    //Register value is read on every digit. 
    //Register needs to be turned off when the other digits are displaying a different value
	P0 = table[vals[0]];
	P2_3 = 0;
    delay(1);
    P2_3 = 1;

	P0 = table[vals[1]];
	P2_2 = 0;
    delay(1);
    P2_2 = 1;

	P0 = table[vals[2]];
	P2_1 = 0;
    delay(1);
    P2_1 = 1;
	
    P0 = table[vals[3]];
	P2_0 = 0;
    delay(1);
    P2_0 = 1;
}
