#!/bin/bash

#SBATCH --job-name=cizsl-reproduce-round6
#SBATCH --nodes=8
#SBATCH --time=48:00:00
#SBATCH --partition=batch
#SBATCH --mem=16GB
#SBATCH --gres=gpu:8
#SBATCH --constraint=[rtx2080ti]
#SBATCH --array=1-10

cd /home/yik/CIZSL/

python train_CIZSL.py --dataset 'CUB' --splitmode 'hard' --creativity_weight 0.1
python train_CIZSL.py --dataset 'NAB' --splitmode 'hard' --creativity_weight 0.1
python train_CIZSL.py --dataset 'NAB' --splitmode 'easy' --creativity_weight 1
python train_CIZSL.py --dataset 'CUB' --splitmode 'easy' --creativity_weight 0.0001
