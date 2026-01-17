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
- *Tare* and *Calibration* values are saved
<br><br>
---
---

## To do
- Fix display
    - Tune display timer (the dummy time when no data is being fetched)
    - Interrupt-based Display
- Blinking in calibration mode
- In-code filters for ADC data
- Dynamic decimal place
    - Show three decimal places when weight is under 10 kg
    - Show only one decimal place when weight is under 1000 kg (Be careful of load cell limit)
    - Maybe allow for finer calibration.  

<!--

### Progress Report

- EEPROM Writing: Functional
- Calibration mode: Functional

<<<<<<< HEAD
=======

### To do
- Tune display timer (the dummy time when no data is being fetched)
- Blinking
- Interrupt-Based Display

<!--
>>>>>>> eb76476e8de3bbd050ee82abcf722e811c1f7e18
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
