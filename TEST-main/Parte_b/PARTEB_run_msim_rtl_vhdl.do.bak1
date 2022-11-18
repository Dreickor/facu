transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/santi/Desktop/Laboratorio/Parte_b/PARTEB.vhd}
vcom -93 -work work {C:/Users/santi/Desktop/Laboratorio/Parte_b/sum_comp.vhd}

vcom -93 -work work {C:/Users/santi/Desktop/Laboratorio/Parte_b/sum_comp_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  sum_comp_tb

add wave *
view structure
view signals
run -all
