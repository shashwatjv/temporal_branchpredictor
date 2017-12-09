-------------------------------------------------------------------------------------------------
|Portland State University
|Course  : ECE587 
|Term    : Fall 2017
|Project : Temporal Stream Branch Predictor
|
|Members : Aalok Panvalkar     (aalok2@pdx.edu)
|	  Sayli Shevade       (sshevade@pdx.edu)
|	  Shashwat Vinchurkar (shashwat@pdx.edu)
|------------------------------------------------------------------------------------------------

Description: Implements temporal stream branch predictor for out-of-order processor.
             Base branch predictors - bimodal, gshare, pag, pap
	     Separate implementation files for each base predictor and corresponding TS predictor
	     
Compile:
	1. Run compileall.sh script to compile default temporal stream predictors
	2. To compile base predictors only,
		a. Comment '#define TEMPORAL' line:32 in 'inc/ooo_cpu.h'
		b. Change all predictor names by removing _ts postfix in compileall.sh
		   eg. bimodal_ts -> bimodal
	3. The bimodal and gshare predictors provide additional debug prints to track prediction
		behavior as per program flow. 
	   Uncomment '//#define BPRED_DBG_ON' line:33 of 'inc/ooo_cpu.h'
	   It prints following parameters:
	   'Instr Count : PC : Base Prediction : Temporal Prediction : Actual Exec. : Replay Mode'

Run:
	The run.sh script spawns simulation runs for all traces present in 'trace' directory.
	Need to copy the required traces in 'trace/'  

--------------------------------------------------------------------------------------------------

Contents:

./compileall.sh
./inc
./inc/champsim.h
./inc/dram_controller.h
./inc/block.h
./inc/uncore.h
./inc/memory_class.h
./inc/cache.h
./inc/kpcp.h
./inc/instruction.h
./inc/champsim.h.bak
./inc/drc_controller.h
./inc/ooo_cpu.h
./trace
./README.txt
./run_champsim.sh
./prefetcher
./prefetcher/l1d_prefetcher.cc
./prefetcher/next_line.l2c_pref
./prefetcher/next_line.l1d_pref
./prefetcher/l2c_prefetcher.cc
./prefetcher/no.l2c_pref
./prefetcher/no.l1d_pref
./run.sh
./replacement
./replacement/lru.llc_repl
./replacement/base_replacement.cc
./replacement/llc_replacement.cc
./sim_list
./sim_list/4core_workloads.txt
./sim_list/run_list.txt
./sim_list/num_to_workloads.sh
./sim_list/4core_number.txt
./scripts
./scripts/roll_50M.sh
./scripts/ipc.sh
./scripts/run_champsim.sh
./scripts/run_4core.sh
./scripts/roll_mix1-10.sh
./src
./src/block.cc
./src/dram_controller.cc
./src/cache.cc
./src/uncore.cc
./src/ooo_cpu.cc
./src/drc_controller.cc
./src/main.cc
./Makefile
./build_champsim.sh
./branch
./branch/gshare_ts.bpred
./branch/bimodal.bpred
./branch/pap_ts.bpred
./branch/pap.bpred
./branch/pag.bpred
./branch/bimodal_ts.bpred
./branch/pag_ts.bpred
./branch/branch_predictor.cc
./branch/gshare.bpred
-------------------------------------------------------------------------------------------------

