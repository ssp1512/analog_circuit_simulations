v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 20 20 20 {lab=vinp}
N -250 -30 -250 20 {lab=vinm}
N -250 -30 20 -30 {lab=vinm}
N -90 10 -90 30 {lab=vindiff}
N -460 10 -90 10 {lab=vindiff}
N -460 10 -460 100 {lab=vindiff}
N -320 30 -290 30 {lab=vindiff}
N -320 10 -320 30 {lab=vindiff}
N -320 70 -290 70 {lab=GND}
N -320 70 -320 110 {lab=GND}
N -460 160 -460 190 {lab=GND}
N -90 70 -90 100 {lab=GND}
N -320 100 -90 100 {lab=GND}
N -250 80 -250 110 {lab=vcm}
N -250 110 -50 110 {lab=vcm}
N -50 80 -50 110 {lab=vcm}
N -160 110 -160 160 {lab=vcm}
N -160 220 -160 260 {lab=GND}
N 80 30 80 80 {lab=GND}
N 140 -10 240 -10 {lab=vout}
N 240 -10 250 -10 {lab=vout}
N 250 -10 250 80 {lab=vout}
N 250 140 250 180 {lab=GND}
N 90 -150 90 -50 {lab=vib5u}
N 90 -240 90 -210 {lab=vdda}
N -80 -240 90 -240 {lab=vdda}
N -80 -240 -80 -210 {lab=vdda}
N -80 -150 -80 -120 {lab=GND}
N 70 -240 70 -60 {lab=vdda}
C {vcvs.sym} -250 50 0 0 {name=E1 value=-0.5}
C {vcvs.sym} -50 50 0 0 {name=E2 value=0.5}
C {vsource.sym} -460 130 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vsource.sym} -160 190 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -80 -180 0 0 {name=V3 value=1.8 savecurrent=false}
C {isource.sym} 90 -180 0 0 {name=I0 value=5u}
C {capa.sym} 250 110 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 80 80 0 0 {name=l1 lab=GND}
C {gnd.sym} -160 260 0 0 {name=l2 lab=GND}
C {gnd.sym} -460 190 0 0 {name=l3 lab=GND}
C {gnd.sym} 250 180 0 0 {name=l4 lab=GND}
C {gnd.sym} -80 -120 0 0 {name=l5 lab=GND}
C {gnd.sym} -320 110 0 0 {name=l6 lab=GND}
C {devices/code.sym} -500 -200 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} 400 -390 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.temp 27
.control
 save all
 save @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
 save @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
 save @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
 save @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[id]
 save @m.x1.xm3.msky130_fd_pr__nfet_01v8[gm]
 save @m.x1.xm3.msky130_fd_pr__nfet_01v8[id]
 save @m.x1.xm4.msky130_fd_pr__nfet_01v8[gm]
 save @m.x1.xm4.msky130_fd_pr__nfet_01v8[id]
 save @m.x1.xm5.msky130_fd_pr__nfet_01v8[gm]
 save @m.x1.xm5.msky130_fd_pr__nfet_01v8[id]
 save @m.x1.xm6.msky130_fd_pr__nfet_01v8[gm]
 save @m.x1.xm6.msky130_fd_pr__nfet_01v8[id]

op
WRITE TB_currentmirrorop.raw
 let im1=@m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
 let im2=@m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[id]
 let im3=@m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[id]
 let im4=@m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[id]
 let im5=@m.x1.xm5.msky130_fd_pr__nfet_01v8[id]
 let im6=@m.x1.xm6.msky130_fd_pr__nfet_01v8[id]

 let gm1=@m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
 let gm2=@m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
 let gm3=@m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
 let gm4=@m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
 let gm5=@m.x1.xm5.msky130_fd_pr__nfet_01v8[gm]
 let gm6=@m.x1.xm6.msky130_fd_pr__nfet_01v8[gm]

 let gmid1=gm1/im1
 let gmid2=gm2/im2
 let gmid3=gm3/im3
 let gmid4=gm4/im4
 let gmid5=gm5/im5
 let gmid6=gm6/im6

 print gmid1
 print gmid2
 print gmid3
 print gmid4
 print gmid5
 print gmid6

 print im1
 print im2
 print im3
 print im4
 print im5
 print im6


 
 AC DEC 100 1 10e6
 plot v(vout)
.ENDC
"}
C {lab_wire.sym} 210 -10 0 0 {name=p1 sig_type=std_logic lab=vout}
C {lab_wire.sym} 0 20 0 0 {name=p2 sig_type=std_logic lab=vinp}
C {lab_wire.sym} -10 -30 0 0 {name=p3 sig_type=std_logic lab=vinm}
C {lab_wire.sym} -380 10 0 0 {name=p4 sig_type=std_logic lab=vindiff}
C {lab_wire.sym} 10 -240 0 0 {name=p5 sig_type=std_logic lab=vdda}
C {lab_wire.sym} 90 -120 3 0 {name=p6 sig_type=std_logic lab=vib5u}
C {lab_wire.sym} -80 110 3 0 {name=p7 sig_type=std_logic lab=vcm}
C {currentmirror1.sym} -100 -150 0 0 {name=x1}
