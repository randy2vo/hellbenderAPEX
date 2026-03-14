#! /bin/bash

# EDIT THIS TO SHOW A DIFFERENT JOBNAME IF YOU LIKE
#SBATCH --job-name MY_JOB

#SBATCH -t 0-04:00:00
#SBATCH -n 1
#SBATCH --mem 4G
#SBATCH -o pcc_screen.txt


input_file=data/all.gex
executable=/cluster/pixstor/class-apex/code/pcc
num_samples=364
num_analytes=8560


srun ${executable} ${input_file} data/all.gex_pcc_0.75.gml $num_analytes $num_samples 0.75

