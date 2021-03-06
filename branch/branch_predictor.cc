#include "ooo_cpu.h"

#define BIMODAL_TABLE_SIZE 1024*2
#define BIMODAL_PRIME 1024*2
#define MAX_COUNTER 3
int bimodal_table[NUM_CPUS][BIMODAL_TABLE_SIZE];

void O3_CPU::initialize_branch_predictor()
{
    cout << "CPU " << cpu << " Bimodal branch predictor" << endl;

    for(int i=0; i<BIMODAL_TABLE_SIZE; i++)
        bimodal_table[cpu][i] = 0;
}

uint8_t O3_CPU::predict_branch(uint64_t ip)
{
    basepred = 1;

    int hash = ip % BIMODAL_PRIME;
    basepred = (bimodal_table[cpu][hash] >= ((MAX_COUNTER + 1)/2)) ? 1 : 0;

    return basepred;
}

void O3_CPU::last_branch_result(uint64_t ip, uint8_t taken)
{
    int hash = ip % BIMODAL_PRIME;

    if (taken && (bimodal_table[cpu][hash] < MAX_COUNTER))
        bimodal_table[cpu][hash]++;
    else if ((taken == 0) && (bimodal_table[cpu][hash] > 0))
        bimodal_table[cpu][hash]--;

#ifdef BPRED_DBG_ON
cout << "DBG-BRANCH: | ID: " << instr_unique_id << std::hex << "|PC: " << ip << std::dec << "|BASE: " << (int)(basepred) << "|ACT: " << (int)(taken) << " |" << endl;
#endif

}
