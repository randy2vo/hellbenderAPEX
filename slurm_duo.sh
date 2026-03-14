#! /bin/bash

# EDIT THIS TO SHOW A DIFFERENT JOBNAME IF YOU LIKE
#SBATCH --job-name MY_JOB

#SBATCH -t 0-04:00:00
#SBATCH -n 1
#SBATCH --mem 4G
#SBATCH -o duo_screen.txt


input_file=data/all.gex
executable=/cluster/pixstor/class-apex/code/duo
num_samples=364
num_analytes=8560
num_header_cols=1
num_header_rows=2

srun ${executable} ${input_file} data/all.gex_duo_0.7.gml $num_samples $num_analytes $num_header_cols $num_header_rows 0.7

