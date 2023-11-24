Idea:
TMC2209/TMC2226 + STM32F103C6T6A + CAN + PWR24TO3.3 + HALL SENSOR + Connector for 2 sensors
КФ1158ЕН3.3В
AS5600
 
https://github.com/epchain/df-pill

https://github.com/terjeio/Trinamic-library

stm32 | tmc | can | as | other 
----- | --- | --- | -- | -----
PA11  |     | RX  |    | 
PA12  |     | TX  |    | 
PA2   |UART |     |    | 
PA3   |UART |     |    | 
PB6   |     |     |SCL | 
PB7   |     |     |SDA | 
PB13  |STEP |     |    | 
      |DIR  |     |    | 
      |M1   |     |    | 
      |M2   |     |    | 
      |SPRD |     |    | 
      |DIAG |     |    | 
      |IDX  |     |    | 
      |EN   |     |    | 
      |     |     |GPO | 
      |     |     |DIR | 
PA4   |     |     |    | VSENSOR
PA5   |     |     |    | ISENSOR
      |     |     |    | END1
      |     |     |    | END2
PB8,9 |     |     |    | ReserveCAN
PA9,10|     |     |    | ReserveUART
PA0   |     |     |    | WakeUp

Rest pins: PB0, PB1, PB10, PB11, PB14, PB15, PA1, PA6, PA7
Don't use PC12
