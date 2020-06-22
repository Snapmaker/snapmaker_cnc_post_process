Generate G-code Using FreeCAD
===============
This instruction teaches you how to carve hexagons on a 2mm carbon fiber sheet. Once you are familiar with all the settings, you can design your own invention. For more details, please visit https://wiki.freecadweb.org/User_hub

## Getting Started

This software is available for Windows and Mac. Since the configuration for both systems is similar, here in this instruction, we take steps in Windows as an example.

### Step 1. Get the Software Ready

Install the software and save the configuration files according to the following steps:

1. Download and Install FreeCAD at https://www.freecadweb.org/.
2. Select the ![alt path](./image/path.png)**Path workbenches** and click ![alt tool](./image/tool.png)**tool manager** to import the [Snapmaker-2.0-CNC-Tools(FreeCAD).json](./Snapmaker-2.0-CNC-Tools(FreeCAD).json).
3. Copy [snapmaker_freecad_post.py](./snapmaker_freecad_post.py) to the C:\Program Files\\${FreeCAD Path}\Mod\Path\PathScripts\post to add the post processor of the Snapmaker to FreeCAD.
    - More FreeCAD path post details on the https://wiki.freecadweb.org/Path_Post

### Step 2. Design the Model You Want to Carve

1. In FreeCAD, select ![alt Part Design](./image/part.png)**Part Design** as the Workbenches.
2. Create a new sketch and select the XY_Plane(Base plane).
![alt new sketch](./image/new-sketch.png)
3. First set the navigation style to CAD, and click ![alt new sketch](./image/polygon.png) to create a regular polygon.When you finish editing, click  ![alt new sketch](./image/close.png) to close the editing of the sketch.
![alt new sketch](./image/regular.png)
4. Click ![alt new sketch](./image/pad.png) and enter 2.00 mm in the Length field. Click OK.
![alt new sketch](./image/body.png)

### Step 3. Generate Tool-Path Strategies
1. Change the Workbenches to ![alt path](./image/path.png)**Path**.
2. Click ![alt path](./image/i-path.png),Selected body and Click OK.
![alt path](./image/c-body.png) 
    - Select **Output** and set Processor is snapmaker_freecad. 
    ![alt path](./image/output.png)   
    - Select **Tools** and click Add.Selected the **flat end mill (3.175 mm)** and click **Create Tool Controllers(s)** to add the tools.
    ![alt path](./image/tools.png)
    - Click OK.
3. Click ![alt path](./image/i-countor.png) to create a contour and set the flat end mill tool.
    - Set the Step Down to 0.2mm
![alt path](./image/countor.png) 
    - Click OK.
### Step 4. Generate G-code
1. Selected the **Job -> Operations -> Contour** and click ![alt path](./image/i-post.png) to post process.
![alt path](./image/post.png)
2. Change the G-code name as you need, and save the G-code.
![alt path](./image/cnc.png)





