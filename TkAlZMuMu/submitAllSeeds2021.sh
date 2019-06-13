#!/bin/bash

eval `scramv1 runtime -sh`
CMSSW_DIR=${CMSSW_BASE}/src/PrivateMCProductions/TkAlZMuMu

if [ -d $CMSSW_DIR/outfiles ]; then
    echo "$CMSSW_DIR/outfiles already exists, skipping"
else
    mkdir $CMSSW_DIR/outfiles
fi

for i in {1..10}; do   
    echo "------ submitting job with seed = $i"
    condor_submit par1=${i} par2=10000 par3=106X_upgrade2021_realistic_Candidate_2019_06_07_21_51_23 submit.sub par4=${CMSSW_DIR}
done

