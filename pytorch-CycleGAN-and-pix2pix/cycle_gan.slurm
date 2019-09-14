#!/bin/bash

#SBATCH --account=h_oguz_lab_acc
#SBATCH --partition=pascal
#SBATCH --gres=gpu:1

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=3G
#SBATCH --time=3:00:00
#SBATCH --output=gpu-job.log



# Max job duration
#SBATCH --job-name=cyclegan

# Communication
#SBATCH --mail-user=shenxin.jiang@vanderbilt.edu
#SBATCH --mail-type=ALL

ml Anaconda3/5.0.1
module load GCC/6.4.0-2.28  
module load CUDA/9.0.176
module load OpenMPI/2.1.1
module load PyTorch/0.3.1-Python-3.6.3


python3 train.py --dataroot ./datasets/maps --name maps_cyclegan --model cycle_gan








