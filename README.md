# SNAPMAKER CNC

## Background

1. Basic workflow explaination. 
   * https://support.snapmaker.com/hc/en-us/articles/360041252474-CNC-Carving
2. Basic workflow explaination in video.
   * https://www.youtube.com/watch?v=OgUdDoCx5iw&feature=youtu.be



**Snapmaker Luban / Snapmakerjs(Old version)**

If you want to do some simple job. You can use any svg editor (Like Inkscape or Adobe Illustrator) to do the design, then export .svg file. Using Snapmaker Luban to generate the gcode. 

Snapmaker Luban also supports relief for small landscape. 


Generate gcode using Luban 

   * https://support.snapmaker.com/hc/en-us/articles/360041252474-CNC-Carving
   * Using svg editor like Inkscape or other software to export .svg file, then import into Luban.
   * Notice that, Luban has supported .dxf file. 


**Fusion360**

We can do more serious tasks by using Autodesk Fusion360. 

Generate gcode using Fusion 360 

   * https://support.snapmaker.com/hc/en-us/articles/360060624834-CNC-Cutting-with-Files-Exported-from-Fusion-360
   * https://www.youtube.com/watch?v=h3vMEiMTlio&t=166s
   * We have developed post processor script for Fusion 360 to help more advanced use case. 
   * The reason we favor Fusion 360 is that it has free license for education.




##  Support software status overview 

| Software        | Status           |  link | versions |
| ------------- |:-------------:| -----:|-----:|
| Snapmaker Luban| Stable | | |
| Fusion 360     | Stable | [snapmaker-fusion360-configuration-20180730](https://github.com/Snapmaker/snapmaker_cnc_post_process/tree/master/snapmaker-fusion360-configuration-20180730)|v2.0.9937 |
| FreeCAD    | Testing     | [snapmaker-freecad-configuration](https://github.com/Snapmaker/snapmaker_cnc_post_process/tree/master/snapmaker-freecad-configuration) |v0.18|
| ArtCAM|Testing|[snapmaker-artcam-configuration](https://github.com/Snapmaker/snapmaker_cnc_post_process/tree/master/snapmaker-artcam-configuration)|v2008|
| Mastercam | TODO      |  ||
| Aspire |Testing |[snapmaker-aspire-configuration](https://github.com/Snapmaker/snapmaker_cnc_post_process/tree/master/snapmaker-aspire-configuration)|v9.514|
| Vcarve |Testing |[snapmaker-vcarve-configuration](https://github.com/Snapmaker/snapmaker_cnc_post_process/tree/master/snapmaker-vcarve-configuration)||



## Gcode 

Similar to Fusion 360, it needs some development effort to create post process script for different CAD platform. These scripts are responsible for converting 3D trajectory (representation) into concrete Gcode dialects.  There are Gcode dialect differences between firmwares (Vendors).

We can refer to [Gcode Reference](./gcode_reference.md) to build post for specific software. 


## Summary

The documentation is still under active development.

Leave a message in this [thread](https://forum.snapmaker.com/t/post-processor-required-for-cnc/4980/12) about what CAM software you are using. If you want official or community support, this is important. 

