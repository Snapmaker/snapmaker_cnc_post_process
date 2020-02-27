# Gcode Reference(Draft)

This is a short Gcode Reference regarding to CNC related feature for Snapmaker 2.0


## Overview

The Gcode that have been used in Snapmaker 2.0 is quite limited. 

Share your ideas to improve Snapmaker 2.0 in [forrm](https://forum.snapmaker.com/c/snapmaker-20/37)


## Reference

### G0 / G1

 The `G0` and `G1` commands add a linear move to the queue to be performed after all previous moves are completed. These commands yield control back to the command parser as soon as the move is queued, but they may delay the command parser while awaiting a slot in the queue.

A linear move traces a straight line from one point to another, ensuring that the specified axes will arrive simultaneously at the given coordinates (by linear interpolation). The speed may change over time following an acceleration curve, according to the acceleration and jerk settings of the given axes.

A command like `G1 F1000` sets the feedrate for all subsequent moves.

*The arc move(G2/G3) should be convert to linear move by tolerance. refer to [Fusion 360 Post Example](./assets/snapmaker-fusion360-configuration-20180730/snapmaker.cps)*


### M3

Usage:

```
M3 [P<percentage>]  | 50< percentage <=100
   M3 P100 indicate that spindle work at 12000 RPM 
```

Wait for moves to complete, then set the spindle speed


### M5 

Wait for moves to complete, then turn off the spindle.


### Sample Gcode 

1. [Snapmaker Text Cut by Snapmaker Luban](./assets/luban_3.1.0_snapamker_text.cnc)
2. Fusion 360 Sample Gcode TBD 