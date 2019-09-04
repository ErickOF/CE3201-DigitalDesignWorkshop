transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/user/Documents/Lab3 {C:/Users/user/Documents/Lab3/mux_not.sv}
vlog -sv -work work +incdir+C:/Users/user/Documents/Lab3 {C:/Users/user/Documents/Lab3/mux_not_test.sv}

