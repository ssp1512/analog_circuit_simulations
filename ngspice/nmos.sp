.TITLE NMOS characterization

.lib /home/swati/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.global vdd gnd
.temp 27

XMN1 out in gnd gnd sky130_fd_pr__nfet_01v8 w=7u l=2u m=2

Rd    vdd out 8k
VGS   in  gnd dc 0
VSUP  vdd gnd dc 1.8

.save v(in) v(out) v(vdd) i(VSUP) i(VGS)

* 1) Transfer curve: Id vs VGS with VDD fixed
.dc VGS 0 1.8 0.01

.control
set noaskquit
* Write transfer to CSV: VGS, VOUT, ID (ID = -I(VSUP))
wrdata nmos_transfer.csv v(in) v(out) -i(VSUP)

* 2) (Optional) Output curves: Id–VDS stepping VGS
*    Sweep VSUP (VDS via supply) while stepping VGS
reset
dc VSUP 0 1.8 0.01 sweep VGS 0 1.8 0.3
wrdata nmos_output.csv v(out) -i(VSUP) VGS

quit
.endc

.end

