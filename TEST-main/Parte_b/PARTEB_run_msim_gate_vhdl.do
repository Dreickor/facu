transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {PARTEB.vho}

vcom -93 -work work {C:/Users/santi/Desktop/Laboratorio/Parte_b/sum_comp_tb.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  sum_comp_tb

add wave *
view structure
view signals
run -all
