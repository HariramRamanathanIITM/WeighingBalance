# Weighing Balance System
## in STM8S on custom PCB

## Features
- **4 Buttons:** Tare, Down, Up, Set
- **Tare:** Zeroes the scale
- **Calibration mode:**
    - Enter by pressing both **Down** and **Up** together
    - Decrease by pressing **Down** and increase by pressing **Up**
    - Save and Exit by pressing **Set**
    - Restore last saved calibration value using **Tare** 

---
---

### Progress Report

- Fetching tare and calib values from EEPROM: Write works properly, only first byte is read properly
- Calibration mode: Functional
- Code is writing in Program memory. VERY IMPORTANT!!!


### To do
- Tune display timer (the dummy time when no data is being fetched)
- Fix EEPROM read
- Blinking
- Interrupt-Based Display

---

### Interrupt Based Display Multiplexing
- Interrupt pops when setting display parameter or clocking ADC
- Minimize how much time interrupt function takes
- Measure how long ADC reading takes
- Flag to keep interrupt time in check
- Maybe disable interrupt when fetching data
- Measure how long ADC reading takes
    - Program an IO pin to pulse once at the start and then once more at the end of data fetch cycle
    - Very Important, helps a lot with display handling
