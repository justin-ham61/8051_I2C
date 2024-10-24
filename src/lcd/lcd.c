#include <8051.h>
#include "../global.h"
#include "lcd.h"

//characters are just ascii codes 
void start_con(void);
void stop_con(void);
void ack(void);
void write(int dt);
void send_command(int cmd);
void send_data(int dt);
void send_str(char *p);
void init_display(void);
void display_2(char *p1, char*p2, int adr1, int adr2);

void display_2(char *p1, char*p2, int adr1, int adr2){
    send_command(0x80 | adr1);
    send_str(p1);
    send_command(0xC0 | adr2);
    send_str(p2);
}

void init_display(void){
    send_command(0x02);
    send_command(0x28);
    send_command(0x0C);
    send_command(0x06);
    send_command(0x01);
}

void start_con(void){
    P2_6 = 1; 
    P2_7 = 1;
    P2_6 = 0;
    P2_7 = 0;
    delay(1);
}

void stop_con(void){
    P2_6 = 0;
    P2_7 = 1;
    P2_6 = 1;
    P2_7 = 0;
    delay(1);
}

void send_command(int cmd){
    int lower;
    int upper;

    //Shift lower bits to upper
    lower = (cmd<<4) & 0xF0;

    //Mast lower bits
    upper = (cmd & 0xF0);

    start_con();
    write(0x4E);
    ack();
    write(upper|0x0C);
    ack();
    write(upper|0x08);
    ack();
    write(lower|0x0C);
    ack();
    write(lower|0x08);
    ack();
    stop_con();
}

void send_data(int dt){
    int lower;
    int upper;

    lower = (dt<<4) & 0xF0;

    upper = (dt & 0xF0);

    start_con();
    write(0x4E);
    ack();
    write(upper|0x0D);
    ack();
    write(upper|0x09);
    ack();
    write(lower|0x0D);
    ack();
    write(lower|0x09);
    ack();
    stop_con();
}

void send_str(char *p){
    int counter = 0;
    while(*p != '\0'){
        if(counter > 16){
            break;
        }
        send_data(*p++);
        counter++;
    }
}

void write(int dt){
    //MSBFIRST since data is formatted
    
    //P7  P6  P5  P4  P3 P2 P1 P0  
    //DB7 DB6 DB5 DB4 BL EN RW RS  //PCF8574 Mapping to LCD
    //0   1   1   0   1  1  0  1

    for(int i = 0; i < 8; i++){
        P2_6 = (dt & (0x80 >> i)) ? 1 : 0;
        P2_7 = 1;
        P2_7 = 0;
    }
    delay(1);
}

void ack(void){
    P2_6 = 1;
    P2_7 = 1;
    P2_7 = 0;
    delay(1);
}