#!/bin/bash

# Run with sbatch parallel_srun.slurm

#SBATCH --job-name=tycho
#SBATCH --account=weirdlab
#SBATCH --partition=gpu-a40
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=kayke@uw.edu

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --gpus-per-task=1
#SBATCH --mem=16G
#SBATCH --time=48:00:00

source ~/.bashrc
conda activate torch

cat $0
echo -e "\n---------------\n"
echo "args"
echo $1
echo -e "\n\n================\n\n"

bash $HOME/sunrise/OpenAIGym_SAC/scripts/run_baseline.sh
