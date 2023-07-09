# 24-7-Ender-Auto-Printing
The provided code is a customized version of G-code, a programming language commonly used to control 3D printers. The code serves the purpose of preparing the printer for a successful print job and concluding the printing process. It includes both the start and end G-code sections.

The start G-code section begins by resetting the extruder and homing all axes to establish a reference point. The next command heats the print bed to a specified temperature (currently set at 62°C, but adjustable) to ensure proper adhesion. The Z-axis is then raised slightly to prevent any damage to the bed surface. The subsequent commands define the initial movements to draw two lines for priming the filament. Afterward, the extruder is reset again, and the Z-axis is raised once more to avoid contact with the bed during movement.

The end G-code section focuses on finishing the print job. It starts by cooling down the print bed to a safe temperature (currently set at 35°C, but can be adjusted). Following that, a series of movements is executed to position the print head (X, Y, and Z coordinates) for the end of the print. The "G90" command ensures absolute positioning accuracy. The subsequent commands present the completed print and then turn off the fan, hotend, and bed. Finally, all the steppers, except for the Z-axis, are disabled.

It is worth noting that certain parts of the code, such as specific temperature values and print coordinates, need to be adjusted according to the user's printer settings and requirements.

# How to Use
1. make sure the area infrut of the bed doesn't have any spaces where small prints can get stucl in during the bed detaching process. A paper can be cliped to the end of the bed to allow the print to slide off intoa container but make sure the paper wont get caught on anything.
2. To understand how to modify G-code for your prints I recomend the follwing video:
   https://www.youtube.com/watch?v=_cyj3KVynag&pp=ygU0aG93IHRvIG1vZGlmdCAzZCBwcmludGluZyBzdGFydGluZyBhbmQgZW5kaW5nIGctY29kZQ%3D%3D
