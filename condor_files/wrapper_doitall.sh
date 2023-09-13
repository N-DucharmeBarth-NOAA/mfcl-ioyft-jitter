#!/bin/bash

# print where we are
pwd
ls -l
echo $PATH

# make directory to work in and set-up
mkdir -p working/
mv Start.tar.gz working/
mv doitall.sh working/
cd working/

# unpack everything from initial tar file
tar -xzf Start.tar.gz
orig_files=$(ls)

# begin calcs
start=`date +%s`
./doitall.sh

# end of calcs book-keeping
end=`date +%s`
runtime=$((end-start))
echo $runtime
echo Start $start >  runtime.txt
echo End $end >> runtime.txt
echo Runtime $runtime >> runtime.txt

# Clean-up
rm Start.tar.gz

# Create empty file so that it does not mess up when repacking tar
touch End.tar.gz
tar -czf End.tar.gz 'test_plot_output' 'sorted_gradient.rpt' 'xinit.rpt' 'new_cor_report' 'neigenvalues' 'runtime.txt' 'catch.rep' '09.par' 'plot-09.par.rep' 'length.fit' 'yft.tag' 'temporary_tag_report' 'dmsizemult' 'yft.frq' 'mfcl.cfg' *.var *.cor
cd ..
mv working/End.tar.gz .
