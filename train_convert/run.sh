#!/bin/sh
#PBS -q l-small
#PBS -l select=1:mpiprocs=1:ompthreads=1
#PBS -W group_list=gj29
#PBS -l walltime=02:00:00
#PBS -o logs/run.sh.o
#PBS -e logs/run.sh.e
cd $PBS_O_WORKDIR
# params: walltime max 168
. /etc/profile.d/modules.sh
# python2で動かす
module load anaconda2/4.3.0 
module load keras/2.1.2 
{
  python finetune_tf.py
} > "log" 2>&1
