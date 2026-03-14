#! /bin/bash

# EDIT THIS TO SHOW A DIFFERENT JOBNAME IF YOU LIKE
#SBATCH --job-name MY_JOB

#SBATCH -t 0-04:00:00
#SBATCH -n 1
#SBATCH --mem 4G
#SBATCH -o keepHi_screen.txt


input_file=data/all.gex_pcc_0.75.gml
executable=/cluster/pixstor/class-apex/code/keepHi


srun ${executable} ${input_file} 8560 67527 1000 data/all.gex_pcc_1k.gml

