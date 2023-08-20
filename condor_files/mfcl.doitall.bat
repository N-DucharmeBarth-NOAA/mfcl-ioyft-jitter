#!/bin/bash

pwd
ls -l
echo $PATH
set

# Upack everything from the tar file
tar -xzf Start.tar.gz
dos2unix doitall.sh
export MFCL=./mfclo64
dos2unix *.par
chmod 700 mfclo64
chmod 700 doitall.sh

start=`date +%s`
./doitall.sh &>/dev/null
end=`date +%s`
runtime=$((end-start))
echo $runtime

if [ -f "runtime.txt" ]
then
  touch runtime.txt
  echo $runtime >> runtime.txt
else
  echo $runtime > runtime.txt
fi

# Create empty file so that it does not mess up when repacking tar
touch End.tar.gz
tar -czf End.tar.gz 'test_plot_output' 'sorted_gradient.rpt' 'xinit.rpt' 'new_cor_report' 'neigenvalues' 'runtime.txt' 'catch.rep' '09.par' 'plot-09.par.rep' 'length.fit' 'yft.tag' 'temporary_tag_report' 'dmsizemult' 'yft.frq'
