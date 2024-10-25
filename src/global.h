#ifndef GLOBAL_H
#define GLOBAL_H

extern int SCREEN_FLAG;

extern int BLINK_MODE;

volatile extern int BLINK_COUNTER;

extern void reset_timer(void);

extern void delay(int);

#endif