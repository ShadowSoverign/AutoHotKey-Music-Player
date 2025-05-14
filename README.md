# AutoHotKey-Music-Player
An AutoHotkey script that plays music 

How to Use:

Double-click on the script and run it.

Choose the music file, and it will play.

Explaining the code:

![image](https://github.com/user-attachments/assets/8a8484f3-ee53-417f-8158-3e8707ec1a88)

This opens a file selection dialogue and stores the selected file path in the variable "file"
Starts browsing in the "My Documents" folder.
Shows "Select Music File:" as the dialogue title.
"2" allows selecting existing files only.

![image](https://github.com/user-attachments/assets/d94e929e-280b-46dd-8bf7-4ef92a47e5ff)

If you cancel the dialogue, it will say ERROR! and exit the script

![image](https://github.com/user-attachments/assets/fa86cd08-defa-4520-a064-f1be45fcde91)

Prepares a GUI that: Can be resized (+Resize ) and always stays on top (+AlwaysOnTop )
Adds a Windows Media Player ActiveX control to the GUI using WMPLayer.ocx.
The control is placed at (0,0) with size 500x300.
It's given the variable name WMP.

![image](https://github.com/user-attachments/assets/5f5b05b1-ca6f-4ec2-97f8-f01cacbf9c21)

Loads the selected file into the WMP control.
Shows the GUI centered on the screen.
Starts a timer that calls the Position label every second to update the title.

![image](https://github.com/user-attachments/assets/4f730e13-26f9-478e-9bfc-4b6f868431e1)

just closes the script when you close the GUI

![image](https://github.com/user-attachments/assets/40af2c4e-b972-401b-a819-e6c7cf2706b7)

Makes the WMP player resize with the window.
Uses the current width and height of the GUI (A_Guiwidth, A_GuiHeight).

![image](https://github.com/user-attachments/assets/fa44f6a2-a232-4b6c-85ca-f2cf6b6f27dd)

Updates the GUl's title every second and shows media file name, current playback time and total duration

![image](https://github.com/user-attachments/assets/69a07122-3c77-475d-a137-21a50012abac)

Converts time (in seconds) into hh:mm: ss or mm:ss format.
Parses time from seconds to minutes and hours.
Uses the helper Pad() function to add leading zeros.

![image](https://github.com/user-attachments/assets/f50e9898-657c-4a58-8e61-776650609b56)

Pads a number with a leading zero if it's a single digit.
