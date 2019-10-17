onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /VGAControllerTest/clk
add wave -noupdate /VGAControllerTest/h_sync
add wave -noupdate /VGAControllerTest/v_sync
add wave -noupdate /VGAControllerTest/blank_n
add wave -noupdate /VGAControllerTest/sync_n
add wave -noupdate /VGAControllerTest/posx
add wave -noupdate /VGAControllerTest/posy
add wave -noupdate /VGAControllerTest/DUT/hcount
add wave -noupdate /VGAControllerTest/DUT/vcount
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {15300 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 184
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 400000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {30848 ps}
