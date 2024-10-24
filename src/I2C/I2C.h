#ifndef I2C_H
#define I2C_H

extern void I2C_poll(void);

typedef struct I2C
{
    int POLLING_MODE;
    int WRITE_ADR;
    int READ_ADR;
    int ADR_SENT;
    int READ_DATA;
    int SHIFT_OUT_DATA;
    int WRITE_AVAIL;
} I2C;



#endif