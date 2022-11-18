transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/OneDrive/Escritorio/TYD II PROYECTOS/PARTEA.vhd}

vcom -93 -work work {C:/Users/Usuario/OneDrive/Escritorio/TYD II PROYECTOS/PARTEATESTBENCH1.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  PARTEA1_testbench

add wave *
view structure
view signals
run -all
