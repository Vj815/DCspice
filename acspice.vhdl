RC circuit
r1 n001 n002 10k
c1 n002 0 10n
vin n001 0 sine(0 5 10k 0.01u 0 0 10)
.tran 500u
.end

  CMOS inverter
vdd 3 0 dc 5v
m1 3 1 2 3 mos1 l=1u w=100u
.model mos1 pmos vto=-1v kp=80u
m2 2 1 0 0 mos2 l=1u w=40u
.model mos2 nmos vto=1v kp=200u
vin 1 0 pulse(0v 5v 0 1ns 1ns 40ns 80ns)
.tran 10ns 200ns
.control
.run
.plot v(1) v(2) title 'CMOS inverter' xlabel 'time'
.endc
.end
