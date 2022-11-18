onerror {quit -f}
vlib work
vlog -work work PARTEB.vo
vlog -work work PARTEB.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sum_comp_vlg_vec_tst
vcd file -direction PARTEB.msim.vcd
vcd add -internal sum_comp_vlg_vec_tst/*
vcd add -internal sum_comp_vlg_vec_tst/i1/*
add wave /*
run -all
