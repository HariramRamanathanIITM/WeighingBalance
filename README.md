# Weighing Balance System
## in STM8S on custom PCB

## Features (V1.0)
- **4 Buttons:** Tare, Down, Up, Set
- **Tare:** Zeroes the scale
- **Calibration mode:**
    - Enter by pressing both **Down** and **Up** together
    - Decrease by pressing **Down** and increase by pressing **Up**
    - Save and Exit by pressing **Set**
    - Restore last saved calibration value using **Tare** 
- **Tare** and **Calibration** values are saved

---
---

### Progress Report

- EEPROM Writing: Functional
- Calibration mode: Functional


### To do
- Tune display timer (the dummy time when no data is being fetched)
- Blinking
- Interrupt-Based Display

---
<!--
### Interrupt Based Display Multiplexing
- Interrupt pops when setting display parameter or clocking ADC
- Minimize how much time interrupt function takes
- Measure how long ADC reading takes
- Flag to keep interrupt time in check
- Maybe disable interrupt when fetching data
- Measure how long ADC reading takes
    - Program an IO pin to pulse once at the start and then once more at the end of data fetch cycle
    - Very Important, helps a lot with display handling
-->