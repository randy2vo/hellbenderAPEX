#! /bin/bash

# EDIT THIS TO SHOW A DIFFERENT JOBNAME IF YOU LIKE
#SBATCH --job-name MY_JOB

#SBATCH -t 0-04:00:00
#SBATCH -n 1
#SBATCH --mem 4G
#SBATCH -o rmSingle_screen.txt


input_file=data/all.gex_duo_1k.gml
executable=/cluster/pixstor/class-apex/code/rmSingle


srun ${executable} ${input_file} 17120 1003 data/all.gex_duo_1k_noSingle.gml
