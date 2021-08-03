.PHONY: yosys
yosys:
	yosys -s yosys_scripts/synth.ys

.PHONY: verilator
verilator: src/top_module.sv
	verilator -cc $< -Wall -Wno-fatal -CFLAGS "-std=c++11 -Wall -DTOPLEVEL_NAME=top_module -g -O0"

.PHONY: sv2v
sv2v: src/top_module.sv
	sv2v $<
