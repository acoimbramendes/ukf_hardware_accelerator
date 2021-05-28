onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_top_level_ukf/wr_enable
add wave -noupdate /tb_top_level_ukf/write_data
add wave -noupdate /tb_top_level_ukf/aclr
add wave -noupdate /tb_top_level_ukf/fast_clock
add wave -noupdate /tb_top_level_ukf/slow_clock
add wave -noupdate /tb_top_level_ukf/testando_top/ukf1/b2v_inst7/clock
add wave -noupdate /tb_top_level_ukf/testando_top/ukf1/b2v_inst7/n_stop_request
add wave -noupdate /tb_top_level_ukf/testando_top/ukf1/b2v_inst7/stop
add wave -noupdate /tb_top_level_ukf/testando_top/ukf1/b2v_inst7/count
add wave -noupdate /tb_top_level_ukf/testando_top/ukf1/b2v_inst7/stop1
add wave -noupdate -group diag -radix float32 /tb_top_level_ukf/testando_top/ukf1/b2v_inst11/result
add wave -noupdate -group diag -radix float32 /tb_top_level_ukf/testando_top/ukf1/b2v_inst11/data_a_sum
add wave -noupdate -group diag -radix float32 /tb_top_level_ukf/testando_top/ukf1/b2v_inst11/data_b_sum
add wave -noupdate -group diag -radix float32 /tb_top_level_ukf/testando_top/ukf1/b2v_inst11/sum_out
add wave -noupdate -expand -group ukf -radix float32 /tb_top_level_ukf/testando_top/ukf1/diag
add wave -noupdate -expand -group ukf -radix float32 /tb_top_level_ukf/testando_top/ukf1/lower1
add wave -noupdate -expand -group ukf -radix float32 /tb_top_level_ukf/testando_top/ukf1/lower2
add wave -noupdate -expand -group ukf -radix float32 /tb_top_level_ukf/testando_top/ukf1/lower3
add wave -noupdate -expand -group ukf -radix float32 /tb_top_level_ukf/testando_top/ukf1/lower4
add wave -noupdate -expand -group ukf -radix float32 /tb_top_level_ukf/testando_top/ukf1/diag_out
add wave -noupdate -expand -group ukf -radix float32 /tb_top_level_ukf/testando_top/ukf1/lower1_out
add wave -noupdate -expand -group ukf -radix float32 /tb_top_level_ukf/testando_top/ukf1/lower2_out
add wave -noupdate -expand -group ukf -radix float32 /tb_top_level_ukf/testando_top/ukf1/lower3_out
add wave -noupdate -expand -group ukf -radix float32 /tb_top_level_ukf/testando_top/ukf1/lower4_out
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst/clock
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst7/stop
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/matrix_size
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/start_begin
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/data_in_1
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/data_in_2
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/data_in_3
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/data_in_4
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/diag_done
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/clear
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/data_available_diag
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/clock_en_diag
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/clock_en1
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/clock_en2
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/clock_en3
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/clock_en4
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/first
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/row_start
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/state
add wave -noupdate -expand -group {control ukf} -radix unsigned /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/count_diag
add wave -noupdate -expand -group {control ukf} -radix unsigned /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/count_lower
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/count_diag_start
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/count_lower_start
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/data_available_lower
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/running
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/stop_pipeline
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/stop
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/data_aux1
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/data_aux2
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/data_aux3
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/data_aux4
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/row
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/counting
add wave -noupdate -expand -group {control ukf} /tb_top_level_ukf/testando_top/ukf1/b2v_inst3/vector_aux
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/start
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/diag
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/lower
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/fifo_out_diag
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/matrix_size_out
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/fifo_wre_diag
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/fifo_wre_lower
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/fifo_rde_diag
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/start_begin
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/stop_pipeline
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/wr_enable
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/empty_l1
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/empty_l2
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/empty_l3
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/empty_l4
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/empty_diag
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/fast_clock
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/slow_clock
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/finish
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/rst
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/matrix_size
add wave -noupdate -expand -group control -radix unsigned /tb_top_level_ukf/testando_top/ukf_fifo_control1/data_in_count
add wave -noupdate -expand -group control /tb_top_level_ukf/testando_top/ukf_fifo_control1/data_start_count
add wave -noupdate -expand -group control -radix unsigned /tb_top_level_ukf/testando_top/ukf_fifo_control1/state
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/DATA_WIDTH
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/wr_rst
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/wr_clk
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/wr_en_l
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/wr_en_d
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/wr_data_l
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/rd_rst
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/rd_clk
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/rd_en_l1
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/rd_en_l2
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/rd_en_l3
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/rd_en_l4
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/rd_en_diag
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/rd_data_l1
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/rd_data_l2
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/rd_data_l3
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/rd_data_l4
add wave -noupdate -expand -group fifo -radix float32 /tb_top_level_ukf/testando_top/fifo_interface1/rd_data_diag
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/full_l1
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/full_l2
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/full_l3
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/full_l4
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/full_diag
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/empty_l1
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/empty_l2
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/empty_l3
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/empty_l4
add wave -noupdate -expand -group fifo /tb_top_level_ukf/testando_top/fifo_interface1/empty_diag
add wave -noupdate /tb_top_level_ukf/wr_enable
add wave -noupdate /tb_top_level_ukf/write_data
add wave -noupdate /tb_top_level_ukf/aclr
add wave -noupdate /tb_top_level_ukf/fast_clock
add wave -noupdate /tb_top_level_ukf/slow_clock
add wave -noupdate /tb_top_level_ukf/a
add wave -noupdate /tb_top_level_ukf/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2725000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 403
configure wave -valuecolwidth 45
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {2482604 ps} {3253144 ps}
