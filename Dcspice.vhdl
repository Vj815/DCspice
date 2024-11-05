*#destroy all
*#run
*#let ID= -Vin#branch
*#plot ID
.dc vin 0 1 1m
vin vin 0 dc 1
r1 vin vd 1k
d1 vd 0 myDiode
.model myDiode D
.end
