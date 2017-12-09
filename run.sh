

for i in `ls trace/ | cut -d "." -f 1`; do
	
	echo "Running PAG Temporal ... $i"
	./run_champsim.sh pag_ts-no-no-lru-1core 1 1 $i &
	
	echo "Running PAP Temporal ... $i"
	./run_champsim.sh pap_ts-no-no-lru-1core 1 1 $i &
	
	echo "Running GSHARE Temporal ... $i"
	./run_champsim.sh gshare_ts-no-no-lru-1core 1 1 $i &
	
	echo "Running BiModal Temporal ... $i"
	./run_champsim.sh bimodal_ts-no-no-lru-1core 1 1 $i &
	
done	

printf "\n All Runs Spawned >> logs available in results directory\n"
printf "\n Each run takes about 5-10 min. to complete.\n"
printf "\n Each log should print 'CHAMPSIM : SIMULATION DONE' at the end if simulation completes successfully.\n\n"
