# PYNQ_Projects

This repository is a full step-by-step guide for creating a video processing hardware overlay. All pojects are made in **Vivado 2016.2** and tested on **PYNQ V2.1 image**. All the projects are explained in detail in report.pdf. The user should be able to recreate the projects with this information.

## Interesting websites
- http://www.pynq.io
- http://adiuvoengineering.com/microzed-chronicles/
- https://yangtavares.com/2017/07/31/creating-a-simple-overlay-for-pynq-z1-board-from-vivado-hlx/
- http://www.wiki.xilinx.com/HLS+Video+Library
- https://github.com/Xilinx/HLx_Examples
- https://www.xilinx.com/support/documentation/sw_manuals/xilinx2015_4/ug902-vivado-high-level-synthesis.pdf

## Information
Each project is documented in report.pdf. All the HLS, bit, tcl and notebook files can be found in the sub-directory.
These can be easily imported onto your own PYNQ device.

# Project list
All projects are explained in <report.pdf>. and chapter number is in the title. 


## - Rebuilding the PYNQ base overlay [2.2]
Rebuilds the vivado base overlay, keeping only components neccesary for the video stream. All projects make use of this overlay.
Project inlcudes:
- Full vivdado base overlay
- Bit & tcl file
- test notebook


## - Our first overlay - Adder [2.3]
Create and implement a simple Adder overlay

**Project inlcudes:**
- hls code
- Bit & tcl file
- Adder notebook

**Project output:**
- 3 + 5 = 8

## - First video processing - Screen splitter [3.2.1]
Create and implement a simple video processing overlay: screen splitter

**Project inlcudes:**
- hls code
- Bit & tcl file
- Notebook

**Project Input and Output:**

<img src="https://raw.githubusercontent.com/Pieter-Berteloot/PYNQ_Projects/master/Video%20Processing/Split/Images/test_1080p_input.bmp" width="350">  <img src="https://raw.githubusercontent.com/Pieter-Berteloot/PYNQ_Projects/master/Video%20Processing/Split/Images/test_1080p_output.bmp" width="350" align="right">

## - C simulation [3.2.2]
Running the C simulator in HLS with image input and output

**Objective**: create a test bench that can read an image, pass it through our IP, and save the image.

**Project inlcudes:**
- HLS code + testbench

**Project Input and Output:**

<img src="https://github.com/Pieter-Berteloot/PYNQ_Projects/blob/master/Video%20Processing/C%20simulation/Images/test_1080p.bmp" width="350">  <img src="https://github.com/Pieter-Berteloot/PYNQ_Projects/blob/master/Video%20Processing/C%20simulation/Images/test_output_1080p.bmp" width="350" align="right">


## - Screen splitter 2 [3.2.3]
Create and implement a simple video processing overlay: screen splitter 2

**Objective**: performing operations on input stream: RGB to Gray

**Project inlcudes:**
- hls code
- Bit & tcl file
- Notebook

**Project Input and Output:**

<img src="https://github.com/Pieter-Berteloot/PYNQ_Projects/blob/master/Video%20Processing/GraySplit/Images/test_1080p.bmp" width="350">  <img src="https://github.com/Pieter-Berteloot/PYNQ_Projects/blob/master/Video%20Processing/GraySplit/Images/test_output_1080p.bmp" width="350" align="right">


## - Sobel x or y [4.2]
Create and implement a simple video filter: sobel x or y

**Objective**: Sobel edge detection horizontally or vertically

**Project inlcudes:**
- hls code
- Bit & tcl file
- Notebook

**Project Input and Output:**

<p align="center">
  <img src="https://github.com/Pieter-Berteloot/PYNQ_Projects/blob/master/Video%20Processing/GraySplit/Images/test_1080p.bmp" width="350">
</p>



<img src="https://github.com/Pieter-Berteloot/PYNQ_Projects/blob/master/Video%20Processing/Sobel%20x%20or%20y/Images/test_output_1080p_x.bmp?raw=true" width="350"> <img src="https://github.com/Pieter-Berteloot/PYNQ_Projects/blob/master/Video%20Processing/Sobel%20x%20or%20y/Images/test_output_1080p_y.bmp?raw=true" width="350" align="right">



## - Sobel_Split IP [5]
Create and implement an IP which can split the screen in half en perform Sobel operations.

**Project inlcudes:**
- hls code
- Bit & tcl file
- Notebook

**Project Input and Outputs:**


  <img src="https://github.com/Pieter-Berteloot/PYNQ_Projects/blob/master/Sobel_IP/Images/Input.bmp" width="350"> <img src="https://github.com/Pieter-Berteloot/PYNQ_Projects/blob/master/Sobel_IP/Images/Sobel.bmp" width="350" align="right">

<img src="https://github.com/Pieter-Berteloot/PYNQ_Projects/blob/master/Sobel_IP/Images/RGB-Sobel.bmp" width="350"> <img src="https://github.com/Pieter-Berteloot/PYNQ_Projects/blob/master/Sobel_IP/Images/Sharpen.bmp" width="350" align="right">

## - Sharpening_IP[5]
Create and implement an IP which can sharpen a video signal.

**Project inlcudes:**
- hls code
- Bit & tcl file
- Notebook

**Project Input and Outputs:**


<img src="https://github.com/Pieter-Berteloot/PYNQ_Projects/blob/master/Sharpening/Images/test_1080p.bmp" width="400"> <img src="https://github.com/Pieter-Berteloot/PYNQ_Projects/blob/master/Sharpening/Images/test_output_1080p.bmp" width="400" align="right">

