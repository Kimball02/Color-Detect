# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\trans\Desktop\project_1\project_1_work_vitis\project_1_work_app_system\_ide\scripts\debugger_project_1_work_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\trans\Desktop\project_1\project_1_work_vitis\project_1_work_app_system\_ide\scripts\debugger_project_1_work_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B3FED4A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351B3FED4A-13722093-0"}
fpga -file C:/Users/trans/Desktop/project_1/project_1_work_vitis/project_1_work_app/_ide/bitstream/design_1_DISPLAY_AGAIN_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/trans/Desktop/project_1/project_1_work_vitis/project_1_work_plat/export/project_1_work_plat/hw/design_1_DISPLAY_AGAIN_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/trans/Desktop/project_1/project_1_work_vitis/project_1_work_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/trans/Desktop/project_1/project_1_work_vitis/project_1_work_app/Debug/project_1_work_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
