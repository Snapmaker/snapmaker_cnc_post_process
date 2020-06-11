+================================================
+                                                
+    Vectric machine output configuration file   
+                                                
+================================================
+                                                
+ History                                        
+                                                
+ Who      When       What                         
+ ======== ========== ===========================
+ Tony M   13/09/2010 Written  
+ Mark     16/07/2015 Added New Segment section.                    
+ ================================================

POST_NAME = "Snapmaker CNC (mm) (*.cnc)"

FILE_EXTENSION = "cnc"

UNITS = "MM"

+------------------------------------------------
+    Line terminating characters                 
+------------------------------------------------

LINE_ENDING = "[13][10]"

+------------------------------------------------
+    Block numbering                             
+------------------------------------------------

LINE_NUMBER_START     = 0
LINE_NUMBER_INCREMENT = 10
LINE_NUMBER_MAXIMUM = 9999999

+================================================
+                                                
+    Formating for variables                     
+                                                
+================================================

VAR LINE_NUMBER = [N|A| N|1.0]
VAR SPINDLE_SPEED = [S|A| S|1.0]
VAR FEED_RATE = [F|C| F|1.1]
VAR X_POSITION = [X|C| X|1.3]
VAR Y_POSITION = [Y|C| Y|1.3]
VAR Z_POSITION = [Z|C| Z|1.3]
VAR ARC_CENTRE_I_ABS_POSITION = [IA|A| I|1.3]
VAR ARC_CENTRE_J_ABS_POSITION = [JA|A| J|1.3]
VAR X_HOME_POSITION = [XH|A| X|1.3]
VAR Y_HOME_POSITION = [YH|A| Y|1.3]
VAR Z_HOME_POSITION = [ZH|A| Z|1.3]

+================================================
+                                                
+    Block definitions for toolpath output       
+                                                
+================================================

+---------------------------------------------------
+  Commands output at the start of the file
+---------------------------------------------------

begin HEADER

"G90"
"G0 Z10.00 F600"
"G21"
"M3 [S]"

+---------------------------------------------------
+  Commands output for rapid moves 
+---------------------------------------------------

begin RAPID_MOVE

"G0 [X] [Y] [Z]"


+---------------------------------------------------
+  Commands output for the first feed rate move
+---------------------------------------------------

begin FIRST_FEED_MOVE

"G1 [X] [Y] [Z] [F]"


+---------------------------------------------------
+  Commands output for feed rate moves
+---------------------------------------------------

begin FEED_MOVE

"G1 [X] [Y] [Z]"


+---------------------------------------------------
+  Commands output for the first clockwise arc move
+---------------------------------------------------

begin FIRST_CW_ARC_MOVE

"G2 [X] [Y] [IA] [JA] [F]"


+---------------------------------------------------
+  Commands output for clockwise arc  move
+---------------------------------------------------

begin CW_ARC_MOVE

"G2 [X] [Y] [IA] [JA]"


+---------------------------------------------------
+  Commands output for the first counterclockwise arc move
+---------------------------------------------------

begin FIRST_CCW_ARC_MOVE

"G3 [X] [Y] [IA] [JA] [F]"


+---------------------------------------------------
+  Commands output for counterclockwise arc  move
+---------------------------------------------------

begin CCW_ARC_MOVE

"G3 [X] [Y] [IA] [JA]"


+---------------------------------------------------
+  Commands output at the end of the file
+---------------------------------------------------

begin FOOTER

"M5"

