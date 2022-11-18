onerror {quit -f}
vlib work
vlog -work work PARTED.vo
vlog -work work PARTED.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.PARTED_vlg_vec_tst
vcd file -direction PARTED.msim.vcd
vcd add -internal PARTED_vlg_vec_tst/*
vcd add -internal PARTED_vlg_vec_tst/i1/*
add wave /*
run -all
