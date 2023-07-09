; Customized Gcode - Adjustments Required
G92 E0 ; Reset Extruder
G28 ; Home all axes
M190 S62 ; Heat bed to desired temperature (modify as needed)
G1 Z2.5 F3000 ; Raise Z Axis slightly to avoid scratching the bed
; Start line for filament priming - consider using a skirt/brim instead
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to starting position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.5 Y200.0 Z0.3 F5000.0 ; Move aside
G1 X0.5 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.5 F3000 ; Raise Z Axis slightly to avoid scratching the bed
G1 X5 Y20 Z0.3 F5000.0 ; Move aside to prevent filament smearing

; End Gcode - Customizations Required
M190 R35 ; Cool down the bed to safe temperature (adjust as needed)
G0 X117 Y210 F3000 ; Modify this command based on your print
G0 X117 Y210 Z60 F3000 ; Modify this command based on your print
G0 X117 Y210 Z0.3 F3000 ; Modify this command based on your print
G0 X117 Y0 Z0.3 F3000 ; Modify this command based on your print
G0 X117 Y210 Z0.3 F3000 ; Modify this command based on your print
G0 X117 Y0 Z0.3 F3000 ; Modify this command based on your print
G90 ; Use absolute positioning for accuracy

G1 X0 Y{machine_depth} ; Present the print
M106 S0 ; Turn off the fan
M104 S0 ; Turn off the hotend
M140 S0 ; Turn off the bed

M84 X Y E ; Disable all steppers except Z
