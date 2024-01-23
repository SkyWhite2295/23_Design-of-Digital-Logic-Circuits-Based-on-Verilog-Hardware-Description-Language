# Design-of-Digital-Logic-Circuits-Based-on-Verilog-Hardware-Description-Language
Digital Logic Experiment

I. Combinational Logic Circuit Design
Input a four-digit binary number, representing a BCD code for 0-9. After decoding, generate the corresponding hexadecimal code to display the decimal number on a seven-segment display, i.e., display digits 0-9. The circuit includes an enable control signal, and when the enable signal is active, it displays the hexadecimal code as per the requirements; otherwise, the seven-segment display remains inactive.

Implement a 4-bit 8-to-1 data selector using Verilog. After successful simulation verification, encapsulate the circuit into a symbol. Follow coding standards in Appendix B. Control the data selection based on the personal student ID, outputting it in 8421 BCD code to LED lights.

II. Memory Circuit Design
Implement D-latches and D-flip-flops behaviorally, encapsulating the devices. Use graphical representation to call D-latches and D-flip-flops, with both devices sharing the same input D. Control them with a toggle switch, connecting their Q outputs to LED lights. Connect EN to a switch and CLK to a button. After downloading, perform functional testing and record experimental observations. Write a Testbench program for simulation.

Design a register file consisting of 8 4-bit registers. The register file supports register address selection, enabling writing of any 4-bit value, and reading data from any register. Read operations do not require clock control, while write operations need to be performed on the rising edge.

III. Counter Circuit Design
Design a counter with functionality similar to the 74LS163. Both clear and load operations are synchronous. Connect the counter IP and the seven-segment display IP using a structured description method, displaying the counting results on the seven-segment display.

Design a frequency divider with a base frequency of 50MHz. It should output frequencies of 1Hz, 10Hz, 100Hz, and 1KHz from four different output terminals.

IV. State Machine Circuit Design
Use a frequency divider with a 50MHz system clock input to generate a 1Hz clock signal controlling the on/off states of a running light. 16 LEDs are sequentially lit, representing 16 states of the state machine, each corresponding to a unique output pattern. The transition to the next state occurs on each clock signal.

Implement a state machine using Verilog. Design a 1010 sequence detector (without considering overlapping sequences) or an 8-bit sequence detector.

V. Simple Interface Design
Complete the design of a dynamic scanning module to display the personal student ID on a dynamic seven-segment display.
Implement a 4x4 keyboard recognition system and display the pressed keys on a seven-segment display.
VI. Complex Interface Design
Control the illumination of a 16x16 LED matrix display to showcase custom patterns.

VII. Practical Circuit Design (4-Person Quiz Buzzer)
This quiz buzzer system accommodates 4 teams, each controlling a button to signal a response.
Upon initiating the quiz, the LED corresponding to the team with the earliest response lights up, accompanied by a sound indicating a successful response. The buttons of the other three teams become inactive.
The host can reset the system with another button.
Integrate a scoring module, displaying each player's score on two seven-segment displays.
A referee can determine correctness, awarding points for correct responses and deducting points for incorrect responses with a nonzero score.
The master reset button resets all players' scores.
The player reaching the set score first wins, with their number displayed on the 16x16 LED matrix display.
