# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\kc10b\Vivado\ECE520L\FinalProject\project_1\project_1_vitis\project_1_app1_system\_ide\scripts\debugger_project_1_app1-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\kc10b\Vivado\ECE520L\FinalProject\project_1\project_1_vitis\project_1_app1_system\_ide\scripts\debugger_project_1_app1-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B3FED4A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351B3FED4A-13722093-0"}
fpga -file C:/Users/kc10b/Vivado/ECE520L/FinalProject/project_1/project_1_vitis/project_1_app1/_ide/bitstream/design_1_wrapper1.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/kc10b/Vivado/ECE520L/FinalProject/project_1/project_1_vitis/project_1_plat1/export/project_1_plat1/hw/design_1_wrapper1.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/kc10b/Vivado/ECE520L/FinalProject/project_1/project_1_vitis/project_1_app1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/kc10b/Vivado/ECE520L/FinalProject/project_1/project_1_vitis/project_1_app1/Debug/project_1_app1.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
