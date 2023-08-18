#!/bin/bash
cd $_CONDOR_SCRATCH_DIR
export PATH=.:$PATH
export ADTMP1=.

MFCL=./mfclo64
FRQ=yft.frq

$MFCL $FRQ yft.ini 00.par -makepar
$MFCL $FRQ 00.par 01.par -file PHASE01.txt
$MFCL $FRQ 01.par 02.par -file PHASE02.txt
$MFCL $FRQ 02.par 03.par -file PHASE03.txt
$MFCL $FRQ 03.par 04.par -file PHASE04.txt
$MFCL $FRQ 04.par 05.par -file PHASE05.txt
$MFCL $FRQ 05.par 06.par -file PHASE06.txt
$MFCL $FRQ 06.par 07.par -file PHASE07.txt
$MFCL $FRQ 07.par 08.par -file PHASE08.txt
$MFCL $FRQ 08.par 09.par -file PHASE09.txt
$MFCL $FRQ 09.par junk -switch 2 1 1 1 1 145 3 
$MFCL $FRQ 09.par junk -switch 2 1 1 1 1 145 4
$MFCL $FRQ 09.par junk -switch 2 1 1 1 1 145 5
$MFCL $FRQ 09.par junk -switch 1 1 1 1
rm junk plot-junk.rep