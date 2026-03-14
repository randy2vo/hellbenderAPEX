#! /bin/bash

# EDIT THIS TO SHOW A DIFFERENT JOBNAME IF YOU LIKE
#SBATCH --job-name MY_JOB

#SBATCH -t 0-04:00:00
#SBATCH -n 1
#SBATCH --mem 4G
#SBATCH -o keepHi_screen.txt


input_file=data/all.gex_duo_0.7.gml
executable=/cluster/pixstor/class-apex/code/keepHi


srun ${executable} ${input_file} 17120 38228 1000 data/all.gex_duo_1k.gml

