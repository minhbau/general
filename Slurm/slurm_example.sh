#!/bin/bash

#SBATCH --partition=workq
#SBATCH -t 10
#SBATCH -A k01
#SBATCH  --ntasks=32
#SBATCH --ntasks-per-node=32
#SBATCH --ntasks-per-socket=16
#SBATCH   -J test
#SBATCH -o out_%j
#SBATCH -e err_%j


time srun -n 32 --hint=nomultithread hello

exit 0

