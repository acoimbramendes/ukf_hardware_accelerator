transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/ukf_fifo_control.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/top_level_ukf.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/fifo_interface.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/dual_clock_fifo.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/vector.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/bu_ukf.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/ukf.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware/IP {D:/TCC/ukf_hardware/IP/fpmult.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware/IP {D:/TCC/ukf_hardware/IP/fpsquare.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware/IP {D:/TCC/ukf_hardware/IP/fpdiv.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware/IP {D:/TCC/ukf_hardware/IP/fpadd.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware/IP {D:/TCC/ukf_hardware/IP/fpsub.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/bu_ndiag.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/bu_nlower.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/bu_lower.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/bu_diag.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/delay_block.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/delay.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/control_ndiag_in.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/control_ukf.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware/IP {D:/TCC/ukf_hardware/IP/div_int.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/mux_a.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/latch_a.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/stop_pipe.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware/db {D:/TCC/ukf_hardware/db/mult_k5s.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware/db {D:/TCC/ukf_hardware/db/mult_i5s.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware/db {D:/TCC/ukf_hardware/db/mult_r5s.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware/db {D:/TCC/ukf_hardware/db/mult_p5s.v}
vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware/db {D:/TCC/ukf_hardware/db/mult_6ct.v}

vlog -vlog01compat -work work +incdir+D:/TCC/ukf_hardware {D:/TCC/ukf_hardware/tb_top_level_ukf.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_top_level_ukf

add wave *
view structure
view signals
run -all
