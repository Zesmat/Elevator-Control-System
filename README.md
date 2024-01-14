# Elevator Control System

This repository contains VHDL code for a comprehensive Elevator Control System. The system is modularized into various VHDL modules, each serving a specific functionality.
![elevator](https://github.com/SuzyAdel/Elevator-Control-System/assets/128175020/08c6e36d-9467-4e1a-82fa-e9eeeda1cbbc)

## Table of Contents
- [Purpose](#purpose)
- [Modules](#modules)
  - [Up Counter 4-bit (up_counter_4_bit)](#up-counter-4-bit-up_counter_4_bit)
  - [Encoder 16-to-4 (enc_16_4)](#encoder-16-to-4-enc_16_4)
  - [Timer (Timer)](#timer-timer)
  - [Floor Display (FloorDisplay)](#floor-display-floordisplay)
  - [Binary to BCD Converter (binary_to_bcd_converter)](#binary-to-bcd-converter-binary_to_bcd_converter)
  - [Clock Divider (clock_divider)](#clock-divider-clock_divider)
  - [Config (Config)](#config-config)
  - [Elevator Control (Elevator_Control)](#elevator-control-elevator_control)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Purpose
The Elevator Control System is designed to address the complex task of managing elevator operations efficiently and safely. The implementation incorporates several key features and modules, each contributing to the overall functionality:

### Key Features:

![control](https://github.com/SuzyAdel/Elevator-Control-System/assets/128175020/49bb0f62-99fa-42e3-9797-c3e8caa462b9)

1. **Floor Control:** The system efficiently manages requests from various floors, prioritizing based on a First Come First Serve (FCFS) approach.

2. **Display System:** The 7-segment floor display provides clear information about the current floor and enhances user experience.

3. **Door Control:** The system intelligently manages door opening and closing, considering factors such as floor detection, user inputs, and weight limits.

4. **Emergency Handling:** The system includes robust emergency handling mechanisms, ensuring safe operation even in unexpected scenarios.

5. **Timer Functionality:** A configurable timer is implemented for controlling the duration of various actions, such as door closing.

### Problem Statement:

Traditional elevator control systems often lack flexibility and extensibility, making it challenging to adapt to diverse use cases. The need for a modular and well-organized VHDL implementation arises to address the following challenges:

- **Modularity:** Traditional systems may lack modularity, making it difficult to extend or modify specific functionalities. The VHDL implementation in this repository emphasizes modularity, allowing users to customize or replace individual modules as needed.

- **Scalability:** As buildings become more complex, elevator systems need to scale efficiently. This implementation provides a scalable solution, accommodating additional floors or features with ease.

- **Readability and Maintainability:** Clear and well-documented code is crucial for maintenance and future development. This repository emphasizes code readability and includes extensive documentation for each module.

- **Customization:** Different scenarios may require specific elevator behaviors. The modular design allows users to tailor the system to their specific needs without compromising the integrity of the overall control system.

## Modules

### Up Counter 4-bit (up_counter_4_bit)
- Behavioral VHDL implementation of a 4-bit up counter.
- The counter increments on each rising clock edge, with optional clearing on a dedicated signal.

  ![counter](https://github.com/SuzyAdel/Elevator-Control-System/assets/128175020/f9f86375-d0ad-4558-93bb-1b7b2a35edec)

- **Ports:**
  - `CLK`: Input clock signal.
  - `CLR`: Input clear signal.
  - `Limit`: Input limit for counter reset.
  - `Counter`: Output 4-bit counter value.

### Encoder 16-to-4 (enc_16_4)
- Behavioral VHDL module for encoding a 16-bit input into a 4-bit output.
- The encoding logic is based on specific conditions for each bit.
- 
  ![enc](https://github.com/SuzyAdel/Elevator-Control-System/assets/128175020/d803c5ff-206c-4382-b842-bf9d25c9a812)

- **Ports:**
  - `enc_in`: Input 16-bit vector to be encoded.
  - `enable`: Input signal enabling the encoding.
  - `enc_out`: Output 4-bit encoded signal.

### Timer (Timer)
- Behavioral VHDL module for a timer with a configurable limit.
- The timer counts clock cycles and generates an output signal when the limit is reached.
- **Ports:**
  - `CLK`: Input clock signal.
  - `EN`: Input enable signal for timer start.
  - `reset`: Input reset signal for timer.
  - `Limit`: Input limit for timer duration.
  - `EN_out`: Output signal indicating when the timer reaches its limit.

### Floor Display (FloorDisplay)
- Behavioral VHDL module for a 7-segment display representing floor numbers from 0 to 15.
- It includes an optional binary-to-BCD converter for enhanced functionality.

![display](https://github.com/SuzyAdel/Elevator-Control-System/assets/128175020/d981a09f-35fa-4f25-bf01-4b78a64c1412)

  
- **Ports:**
  - `FLOOR`: Input binary representation of the floor number (0 to 15).
  - `SEG1`: Output for DISPLAY1.
  - `SEG2`: Output for DISPLAY2.

### Binary to BCD Converter (binary_to_bcd_converter)
- Behavioral VHDL module for converting a 4-bit binary input to two 4-bit BCD outputs.

![BCD-7](https://github.com/SuzyAdel/Elevator-Control-System/assets/128175020/1992ea78-5120-4b23-84fd-b5937a33a6ea)

  
- **Ports:**
  - `binary_in`: Input 4-bit binary vector.
  - `bcd0`: Output lower 4 bits of BCD.
  - `bcd1`: Output higher 4 bits of BCD.

### Clock Divider (clock_divider)
- Behavioral VHDL module for dividing the input clock frequency by a configurable factor.
  
![clockdiv](https://github.com/SuzyAdel/Elevator-Control-System/assets/128175020/0515a969-4108-4d0e-a695-1cc33d1f2d9d)
  
- **Ports:**
  - `clk`: Input clock signal.
  - `clk_out`: Output divided clock signal.

### Config (Config)
- Configuration file defining the entities used in the Elevator Control System.

### Elevator Control (Elevator_Control)
- Behavioral VHDL module for an elevator control system integrating multiple modules.
- Implements a state machine for elevator operation, floor requests, and door control.

![asm](https://github.com/SuzyAdel/Elevator-Control-System/assets/128175020/7a12fe06-8664-4199-af65-be5423fb7662)

- **Ports:**
  - `CLK`: Input clock signal.
  - `Keypad`: Input vector representing the keypad.
  - `power`: Input signal indicating power status.
  - `floor_detected`: Input signal indicating floor detection.
  - `open_btn`: Input signal for the door open button.
  - `close_btn`: Input signal for the door close button.
  - `weight`: Input integer representing the weight.
  - `person_detected`: Input signal indicating person detection.
  - `Door_open`: Output signal indicating door status.
  - `Display1`: Output 7-segment display for floor representation.
  - `Display2`: Output 7-segment display for floor representation.

![BCD-dec](https://github.com/SuzyAdel/Elevator-Control-System/assets/128175020/131fe869-34a4-4cb8-84b0-14059c4a3720)
