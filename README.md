# Weighing Balance System
## in STM8S on custom PCB
---
## Current State

- Fetching tare from EEPROM: Attempt 1 (Failure) 
- Interrupt-Based Display: Attempt 1 (Failure)
- Calibration mode: On-going
- Code is writing in FLASH memory. VERY IMPORTANT!!!

---

### Calibration mode
- Enter by pressing both cal_down and cal_up together
- Decrease by pressing cal_down and increase by pressing cal_up
- Exit by pressing button 4

#### Try to implement 
- Blinking
- Calibration while active reading. 

### EEPROM storing
- Write works properly
- Only first byte is read correctly

### Interrupt Based Display Multiplexing
- Interrupt pops when setting display parameter or clocking ADC
- Minimize how much time interrupt function takes
- Measure how long ADC reading takes
- Flag to keep interrupt time in check
- Maybe disable interrupt when fetching data

### Measure how long ADC reading takes
- Program an IO pin to pulse once at the start and then once more at the end of data fetch cycle
- Very Important, helps a lot with display handling