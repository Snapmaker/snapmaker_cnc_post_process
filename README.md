# SNAPMAKER CNC

## Background

1. Basic workflow explaination. 
   * https://support.snapmaker.com/hc/en-us/articles/360041252474-CNC-Carving
2. Basic workflow explaination in video.
   * https://www.youtube.com/watch?v=OgUdDoCx5iw&feature=youtu.be



**Snapmaker Luban / Snapmakerjs(Old version)**

If you want to do some simple job. You can use any svg editor (Like Inkscape or Adobe Illustrator) to do the design, then export .svg file. Using Snapmaker Luban to generate the gcode. 

Snapmakerjs also supports relief for small landscape. 


Generate gcode using Snapmakerjs 

   * https://support.snapmaker.com/hc/en-us/articles/360041252474-CNC-Carving
   * Using svg editor like Inkscape or other software to export .svg file, then import into Snapmakerjs.
   * Notice that, .dxf is a format that working on to let Snapmakerjs read .dxf file. For now, you can use other tools like https://cloudconvert.com/dxf-to-svg or alternative to help to do the job if your CAD software can’t export .svg format. 


**Fusion360**

We can do more serious tasks by using Adobe Fusion360. 

Generate gcode using Fusion 360 

   * https://manual.snapmaker.com/cnc_carving/generate_g-code_using_fusion_360/42-generate-g-code-using-fusion-360.html
   * https://www.youtube.com/watch?v=h3vMEiMTlio&t=166s
   * We have developed post processor script for Fusion 360 to help more advanced use case. 
   * The reason we favor Fusion 360 is that it has free license for education.




##  Support software status overview 

| Software        | Status           |  link |
| ------------- |:-------------:| -----:|
| Snapmaker Luban| Stable | | 
| Fusion 360     | Stable | |
| FreeCAD    | Testing     |   |
| ArtCAM|Testing||
| Mastercam | TODO      |  |
| Aspire |Testing ||



## Gcode 

Similar to Fusion 360, it needs some development effort to create post process script for different CAD platform. These scripts are responsible for converting 3D trajectory (representation) into concrete Gcode dialects.  There are Gcode dialect differences between firmwares (Vendors).

We can refer to [Gcode Reference](./gcode_reference.md) to build post for specific software. 


## Summary

The documentation is still under active development.

Leave a message in this [thread](https://forum.snapmaker.com/t/post-processor-required-for-cnc/4980/12) about what CAM software you are using. If you want official or community support, this is important. 

