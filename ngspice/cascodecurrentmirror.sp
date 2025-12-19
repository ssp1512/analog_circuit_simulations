

******* Simple Current Mirror using N-Channel MOSFET ********************

.title Cascode Current Mirror
.lib /home/swati/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.global gnd
.temp 27
Xmn1 Gn Gn gnd gnd sky130_fd_pr__nfet_01v8 w=5 l=2 m=4
Xmn2 Dn2 Gn gnd gnd sky130_fd_pr__nfet_01v8 w=5 l=2 m=4
Xmn3 Dn3 Dn3 Gn gnd sky130_fd_pr__nfet_01v8 w=5 l=2 m=4
Xmn4 Dn4 Dn3 Dn2 gnd sky130_fd_pr__nfet_01v8 w=5 l=2 m=4
Iin Cn1 Dn3 dc 100u
Vout Out gnd dc 0.84
Vcm1 vdd Cn1 dc 0
Vcm2 Out Dn4 dc 0
vsup vdd gnd dc 1.8
.dc Vout 0 1.8 0.01
*.dc Iin 0 200u 1u
*.ac dec 20 1 1G
*.tran 20u 1n
.control
run
set color=white
plot i(Vcm1) i(Vcm2)
*plot /deriv(i(Vcm2))
*plot v(Gn) v(Dn3) v(Dn2)
*plot v(Gn)
*plot i(Vcm1) i(Vcm2)
*plot deriv(v(Gn))
.end
.endc

