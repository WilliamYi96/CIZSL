#!/bin/bash

#SBATCH --job-name=cizsl-reproduce-round1
#SBATCH --nodes=8
#SBATCH --time=48:00:00
#SBATCH --partition=batch
#SBATCH --mem=16GB
#SBATCH --gres=gpu:8
#SBATCH --constraint=[gtx1080ti]
#SBATCH --array=1-10

cd /home/yik/CIZSL/

./run.sh