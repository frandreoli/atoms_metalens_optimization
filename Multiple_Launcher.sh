#!/bin/bash

echo "Launching Julia files"
nameFile="OPTIM"
nCores=32
nThreads=32
dateString=$(date +'%d-%m-%Y_%H.%M.%S')
nameOut="out_$nameFile""_n$nCores""_t$nThreads""_$dateString"

nohup /usr/bin/time -v julia -p $nCores -t $nThreads "Metalens OPTIM - Launcher.jl" $dateString 2> "Outputs/Errors/""$nameOut""_ERROR.out" 1> "Outputs/""$nameOut"".out" &
echo "Launching completed"