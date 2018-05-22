# PYNQ_Projects

This repository is a full step-by-step guide for creating a video processing hardware overlay. All pojects are made in **Vivado 2016.2** and tested on **PYNQ V2.1 image**.

## Interesting websites
- http://www.pynq.io
- http://adiuvoengineering.com/microzed-chronicles/
- https://yangtavares.com/2017/07/31/creating-a-simple-overlay-for-pynq-z1-board-from-vivado-hlx/
- http://www.wiki.xilinx.com/HLS+Video+Library
- https://github.com/Xilinx/HLx_Examples
- https://www.xilinx.com/support/documentation/sw_manuals/xilinx2015_4/ug902-vivado-high-level-synthesis.pdf

## Information
Each project is documented in <een pdf met report hier>. All the HLS, bit, tcl and notebook files can be found in the sub-directory.
These can be easily imported onto your own PYNQ device using the following code in the terminal.

sudo -H pip install --upgrade 'git+https://github.com/Pieter-Berteloot/PYNQ_Projects/<project>'

# Project list
All projects are explained in <report.pdf>. and chapter number is in the title. 


## Rebuilding the PYNQ base overlay [2.1]
Rebuilds the vivado base overlay, keeping only components neccesary for the video stream.

