# ECE 520 - Color Detection

# Introduction
This project uses a Pmod COLOR sensor with a Zybo Z7 board to detect specific colors and display the corresponding output using the onboard RGB LEDs. The hardware design was created in Vivado, then exported to Vitis where the system was programmed in C.

This is the final project for ECE 520 at California State University, Northridge (CSUN).

Completed by:
- David Kimball
- Keitaro Cho

Professor
- Aaron Nanas

# Project Goals
- To design a system that is able to detect colors and output the corresponding colors using RGB LEDs.
  
# Block Diagram

<img width="642" height="391" alt="image" src="https://github.com/user-attachments/assets/88617c75-8bf4-4a2c-8a8f-4493aeb26d92" />

<img width="1484" height="684" alt="image" src="https://github.com/user-attachments/assets/6b2edfa9-a39c-422a-9ea0-13ba914b3697" />

# Video Demonstration

https://youtu.be/4fhE1o6sM5c

# Photos

## BLUE

<img width="2024" height="3032" alt="IMG_5078" src="https://github.com/user-attachments/assets/028af500-3012-458f-a152-c49644a5d2ae" />

## GREEN

<img width="2024" height="3032" alt="IMG_5076" src="https://github.com/user-attachments/assets/625916ed-2f71-4833-b663-a66de02217bf" />

## RED

<img width="2024" height="3032" alt="IMG_5077" src="https://github.com/user-attachments/assets/f84cc428-968f-4965-acad-96215fd92ea3" />

## PURPLE

<img width="2024" height="3032" alt="IMG_5085" src="https://github.com/user-attachments/assets/f279cd31-02b1-42c7-b568-11ddb305c13f" />

## YELLOW

<img width="2024" height="3032" alt="IMG_5080" src="https://github.com/user-attachments/assets/b45d0984-f88f-4062-99c2-cfe2daf9a04f" />

## TEAL

<img width="2024" height="3032" alt="IMG_5079" src="https://github.com/user-attachments/assets/44516f95-bd72-4efe-8521-9bc96d24fdd5" />

# Background and Methodology
The system was developed by configuring the Zynq Processing System in Vivado and enabling the I2C peripheral through EMIO to connect to the Pmod COLOR sensor. AXI GPIO modules were added to control both the sensor’s onboard LED and the Zybo’s RGB LED, with appropriate pin constraints defined in the XDC file. After generating the bitstream and exporting the hardware platform, Vitis was used to write C code that initialized the I2C interface, configured the sensor, and continuously read color data. The measured RGB values were compared in software to determine the dominant color, and the corresponding output was written to the AXI GPIO controlling the onboard RGB LED. The system was tested by placing colored objects in front of the sensor and observing the resulting LED behavior.

# Results
We successfully integrated the Pmod COLOR sensor with the Zybo Z7-10 FPGA to create a system capable of real-time color detection and visual feedback using the onboard RGB LED. This project reinforced core concepts in embedded systems and digital design, including hardware-software integration, I2C communication, and the use of memory-mapped peripherals such as AXI GPIO. By configuring and coordinating components within both the processing system and programmable logic, we gained practical experience in interfacing external hardware, debugging signal connections, and implementing a complete FPGA-based system.





# Components Used
| Microcontroller | Sensor | Wiring |
| --- | --- | --- |
| ZYBO-Z7 | Pmod COLOR | Jumper Wires |
