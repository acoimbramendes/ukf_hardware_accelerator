onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix float32 /tb_ukf/diag
add wave -noupdate -radix float32 /tb_ukf/lower1
add wave -noupdate -radix float32 /tb_ukf/lower2
add wave -noupdate -radix float32 /tb_ukf/lower3
add wave -noupdate -radix float32 /tb_ukf/lower4
add wave -noupdate -radix float32 /tb_ukf/matrix_size
add wave -noupdate -radix float32 /tb_ukf/parallel_units
add wave -noupdate -radix float32 /tb_ukf/clk
add wave -noupdate -radix float32 /tb_ukf/aclr
add wave -noupdate -radix float32 /tb_ukf/start
add wave -noupdate -radix float32 /tb_ukf/a0/lower1_out
add wave -noupdate -radix float32 /tb_ukf/a0/lower2_out
add wave -noupdate -radix float32 /tb_ukf/a0/lower3_out
add wave -noupdate -radix float32 /tb_ukf/a0/lower4_out
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/data_in_flag
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/clock
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/clk_en
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/ack
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/first
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/data_in_low_a_sum
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/data_in_low_b_div
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/data_in_nlow_b_mul
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/data_available_lower
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/data_available_nlower
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/data_available_ndiag
add wave -noupdate -group bu -radix float32 /tb_ukf/a0/b2v_inst/lower_result
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/ndiag_result
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/nlower_result
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/delay1_nlower_out
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/delay2_nlower_out
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/Delay_div_in
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/Delay_div_out
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/delay_ndiag_out
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/SYNTHESIZED_WIRE_11
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/SYNTHESIZED_WIRE_1
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/SYNTHESIZED_WIRE_12
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/SYNTHESIZED_WIRE_4
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/SYNTHESIZED_WIRE_6
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/SYNTHESIZED_WIRE_7
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/SYNTHESIZED_WIRE_8
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/SYNTHESIZED_WIRE_9
add wave -noupdate -group bu /tb_ukf/a0/b2v_inst/SYNTHESIZED_WIRE_10
add wave -noupdate -expand -group diag -radix float32 /tb_ukf/a0/b2v_inst11/result
add wave -noupdate -expand -group diag -radix float32 /tb_ukf/a0/b2v_inst11/data_a_sum
add wave -noupdate -expand -group diag -radix float32 /tb_ukf/a0/b2v_inst11/data_b_sum
add wave -noupdate -expand -group diag -radix float32 /tb_ukf/a0/b2v_inst11/sum_out
add wave -noupdate -expand -group diag -radix float32 /tb_ukf/a0/b2v_inst11/clock
add wave -noupdate -expand -group diag -radix float32 /tb_ukf/a0/b2v_inst11/clk_en
add wave -noupdate -expand -group diag -radix float32 /tb_ukf/a0/b2v_inst11/aclr
add wave -noupdate -expand -group diag -radix float32 /tb_ukf/a0/b2v_inst11/data_available
add wave -noupdate -expand -group diag -radix float32 /tb_ukf/a0/b2v_inst11/data_in_flag
add wave -noupdate -expand -group diag -radix float32 /tb_ukf/a0/b2v_inst11/data_available_a
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/clock
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/areset
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/remain
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/size
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/matrix_size
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/start_begin
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/data_in_1
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/data_in_2
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/data_in_3
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/data_in_4
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/diag_done
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/clear
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/data_available_diag
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/clock_en_diag
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/clock_en1
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/clock_en2
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/clock_en3
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/clock_en4
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/first
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/row_start
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/finish
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/state
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/next_state
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/count_diag
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/count_lower
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/count_diag_start
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/count_lower_start
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/data_available_lower
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/running
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/data_aux1
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/data_aux2
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/data_aux3
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/data_aux4
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/row
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/lower_start_s
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/counting
add wave -noupdate -expand -group control -radix float32 /tb_ukf/a0/b2v_inst3/vector_aux
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2218052 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 277
configure wave -valuecolwidth 100
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
WaveRestoreZoom {2081092 ps} {3202328 ps}
