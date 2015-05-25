# Led Cube Software

This is the source code of the software I wrote to drive my 8x8x8 LED Cube. You can view the [project page](http://michaeledavies.com/cube.html "LED Cube") to get a better idea of how the cube was constructed.

## LedCube.sln
There are 3 C# projects built on .NET 4.5: LedCubeDriver, LedCubeAnimations, and LedCubeDaemon. These projects are intended to run on mono on a Raspberry Pi.

## LedCubeMCU
This folder contains a project for low-level driver code to operate the PICLF45K22 MCU that manages the LED drivers and LEDs. It is written with MikroE's Pic for C Pro IDE and compiler. I use a MikroProg pod to flash my MCU to update it.
