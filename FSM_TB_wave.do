onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider -height 40 {Reset & Initialized Test}
add wave -noupdate /Food_Dispenser_TB/clk
add wave -noupdate /Food_Dispenser_TB/reset
add wave -noupdate /Food_Dispenser_TB/initialize_flag
add wave -noupdate -radix unsigned /Food_Dispenser_TB/DUT/nextstate
add wave -noupdate -radix unsigned /Food_Dispenser_TB/DUT/state
add wave -noupdate -divider -height 40 {Refill Test}
add wave -noupdate /Food_Dispenser_TB/clk
add wave -noupdate /Food_Dispenser_TB/refill_detector
add wave -noupdate /Food_Dispenser_TB/cap_detector
add wave -noupdate /Food_Dispenser_TB/food_weight
add wave -noupdate /Food_Dispenser_TB/food_gate
add wave -noupdate -radix unsigned /Food_Dispenser_TB/DUT/nextstate
add wave -noupdate -radix unsigned /Food_Dispenser_TB/DUT/state
add wave -noupdate -divider -height 40 {Playfunction Test}
add wave -noupdate /Food_Dispenser_TB/newday
add wave -noupdate /Food_Dispenser_TB/play_function_pedal
add wave -noupdate /Food_Dispenser_TB/play_function_flag
add wave -noupdate /Food_Dispenser_TB/play_function_fail_flag
add wave -noupdate /Food_Dispenser_TB/food_gate
add wave -noupdate -radix unsigned /Food_Dispenser_TB/food_weight
add wave -noupdate -radix unsigned /Food_Dispenser_TB/DUT/play_function_counter
add wave -noupdate -radix unsigned /Food_Dispenser_TB/DUT/nextstate
add wave -noupdate -radix unsigned /Food_Dispenser_TB/DUT/state
add wave -noupdate -divider -height 40 {Times Up Test}
add wave -noupdate /Food_Dispenser_TB/timesup
add wave -noupdate -radix unsigned /Food_Dispenser_TB/set_food_weight
add wave -noupdate -radix unsigned /Food_Dispenser_TB/food_weight
add wave -noupdate /Food_Dispenser_TB/food_gate
add wave -noupdate /Food_Dispenser_TB/warning
add wave -noupdate -radix unsigned /Food_Dispenser_TB/DUT/nextstate
add wave -noupdate -radix unsigned /Food_Dispenser_TB/DUT/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {201 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 335
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
WaveRestoreZoom {0 ns} {540 ns}

run 3200
