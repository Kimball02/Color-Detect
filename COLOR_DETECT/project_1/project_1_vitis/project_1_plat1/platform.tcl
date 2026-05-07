# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\kc10b\Vivado\ECE520L\FinalProject\project_1\project_1_vitis\project_1_plat1\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\kc10b\Vivado\ECE520L\FinalProject\project_1\project_1_vitis\project_1_plat1\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {project_1_plat1}\
-hw {C:\Users\kc10b\Vivado\ECE520L\FinalProject\project_1\design_1_wrapper1.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/kc10b/Vivado/ECE520L/FinalProject/project_1/project_1_vitis}

platform write
platform generate -domains 
platform active {project_1_plat1}
domain active {zynq_fsbl}
bsp reload
bsp setdriver -ip axi_gpio_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
bsp setdriver -ip axi_gpio_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
platform generate
