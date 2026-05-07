# ECE 520 - Color Detection

# Introduction
This project uses a Pmod COLOR sensor with a Zybo Z7 board to detect specific colors, display the corresponding output using the onboard RGB LEDs, and display the binary value that corresponds with the color that is being detected. The hardware design was created in Vivado, then exported to Vitis where the system was programmed in C.

This is the final project for ECE 520 at California State University, Northridge (CSUN).

Completed by:
- David Kimball
- Keitaro Cho

Professor
- Aaron Nanas

# Project Goals
- To design a system that is able to detect colors and output the corresponding colors using RGB LEDs as well as display the binary value that corresponds with the detected color.
  
# Block Diagram

<img width="642" height="391" alt="image" src="https://github.com/user-attachments/assets/88617c75-8bf4-4a2c-8a8f-4493aeb26d92" />




# Video Demonstration



# Photos

## BLUE



## GREEN



## RED



## PURPLE



## YELLOW



## TEAL



# Background and Methodology
The system was developed by configuring the Zynq Processing System in Vivado and enabling the I2C peripheral through EMIO to connect to the Pmod COLOR sensor. AXI GPIO modules were added to control both the sensor’s onboard LED and the Zybo’s RGB LED, with appropriate pin constraints defined in the XDC file. A custom AXI IP block was also created to control the Zybo's onbaord LEDs. After generating the bitstream and exporting the hardware platform, Vitis was used to write C code that initialized the I2C interface, configured the sensor, and continuously read color data. The measured RGB values were compared in software to determine the dominant color, and the corresponding output was written to the AXI GPIO controlling the onboard RGB LED as well as the binary value that was associated with the detected color. The system was tested by placing colored objects in front of the sensor and observing the resulting LED behavior.

# Results
We successfully integrated the Pmod COLOR sensor with the Zybo Z7-10 FPGA to create a system capable of real-time color detection and visual feedback using the onboard RGB LED and LEDs. This project reinforced core concepts in embedded systems and digital design, including hardware-software integration, I2C communication, custom IP block design, and the use of memory-mapped peripherals such as AXI GPIO. By configuring and coordinating components within both the processing system and programmable logic, we gained practical experience in interfacing external hardware, debugging signal connections, and implementing a complete FPGA-based system.





# Components Used
| Microcontroller | Sensor | Wiring |
| --- | --- | --- |
| ZYBO-Z7 | Pmod COLOR | Jumper Wires |
