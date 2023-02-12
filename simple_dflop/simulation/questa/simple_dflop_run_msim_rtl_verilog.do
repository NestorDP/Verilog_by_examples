transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/nestor/FPGA_studies/DE10-Lite/Verilog_by_examples/simple_dflop {/home/nestor/FPGA_studies/DE10-Lite/Verilog_by_examples/simple_dflop/simple_dflop.v}

