

for i in `ls trace/ | cut -d "." -f 1`; do
	
	echo "Running PAG Temporal ... $i"
	./run_champsim.sh pag_ts-no-no-lru-1core 1 50 $i
	
	echo "Running PAP Temporal ... $i"
	./run_champsim.sh pap_ts-no-no-lru-1core 1 50 $i
	
	echo "Running GSHARE Temporal ... $i"
	./run_champsim.sh gshare_ts-no-no-lru-1core 1 50 $i
	
	echo "Running BiModal Temporal ... $i"
	./run_champsim.sh bimodal_ts-no-no-lru-1core 1 50 $i
	
	echo "Running PAG Normal ... $i"
	./run_champsim.sh pag-no-no-lru-1core 1 50 $i
	
	echo "Running PAP Normal ... $i"
	./run_champsim.sh pap-no-no-lru-1core 1 50 $i
	
	echo "Running GSHARE Normal ... $i"
	./run_champsim.sh gshare-no-no-lru-1core 1 50 $i
	
	echo "Running BiModal Normal ... $i"
	./run_champsim.sh bimodal-no-no-lru-1core 1 50 $i
done	
echo "All Done ... SO Jayo"
