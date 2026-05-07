# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\trans\Desktop\project_1\project_1_work_vitis\project_1_work_plat\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\trans\Desktop\project_1\project_1_work_vitis\project_1_work_plat\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {project_1_work_plat}\
-hw {C:\Users\trans\Desktop\project_1\design_1_wrapper1.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/trans/Desktop/project_1/project_1_work_vitis}

platform write
platform generate -domains 
platform active {project_1_work_plat}
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
platform active {project_1_work_plat}
platform config -updatehw {C:/Users/trans/Desktop/project_1/design_1_new_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/trans/Desktop/project_1/design_1_new_again_wrapper.xsa}
platform clean
platform generate
platform active {project_1_work_plat}
platform generate -domains 
platform active {project_1_work_plat}
platform config -updatehw {C:/Users/trans/Desktop/project_1/design_1_DISPLAY_LED_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
bsp setdriver -ip axi_color_led_display_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
bsp setdriver -ip axi_color_led_display_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform config -updatehw {C:/Users/trans/Desktop/project_1/design_1_DISPLAY_LED_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
bsp reload
platform config -updatehw {C:/Users/trans/Desktop/project_1/design_1_DISPLAY_AGAIN_wrapper.xsa}
bsp reload
bsp reload
platform generate -domains 
bsp setdriver -ip axi_gpio_1 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
bsp setdriver -ip axi_gpio_1 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain,zynq_fsbl 
