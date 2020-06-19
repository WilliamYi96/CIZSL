#!/bin/bash
#SBATCH -N 1
#SBATCH --partition=batch
#SBATCH -J r5-CIZSL-reproduce-r1
#SBATCH -o r5-CIZSL-reproduce-r1.%J.out
#SBATCH -e r5-CIZSL-reproduce-r1.%J.err
#SBATCH --mail-user=kai.yi@kaust.edu.sa
#SBATCH --mail-type=ALL
#SBATCH --time=48:00:00
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --constraint=[gtx1080ti]

#run the application:
cd /home/yik/CIZSL/
python train_CIZSL5.py --dataset 'CUB' --splitmode 'hard' --creativity_weight 0.1
python train_CIZSL5.py --dataset 'NAB' --splitmode 'hard' --creativity_weight 0.1
python train_CIZSL5.py --dataset 'NAB' --splitmode 'easy' --creativity_weight 1
python train_CIZSL5.py --dataset 'CUB' --splitmode 'easy' --creativity_weight 0.0001




