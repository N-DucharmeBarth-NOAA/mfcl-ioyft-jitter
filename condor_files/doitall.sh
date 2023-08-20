#!/bin/bash

FRQ=yft.frq

mfclo64 $FRQ yft.ini 00.par -makepar
mfclo64 $FRQ 00.par 01.par -file PHASE01.txt
mfclo64 $FRQ 01.par 02.par -file PHASE02.txt
mfclo64 $FRQ 02.par 03.par -file PHASE03.txt
mfclo64 $FRQ 03.par 04.par -file PHASE04.txt
mfclo64 $FRQ 04.par 05.par -file PHASE05.txt
mfclo64 $FRQ 05.par 06.par -file PHASE06.txt
mfclo64 $FRQ 06.par 07.par -file PHASE07.txt
mfclo64 $FRQ 07.par 08.par -file PHASE08.txt
mfclo64 $FRQ 08.par 09.par -file PHASE09.txt
mfclo64 $FRQ 09.par junk -switch 2 1 1 1 1 145 3 
mfclo64 $FRQ 09.par junk -switch 2 1 1 1 1 145 4
mfclo64 $FRQ 09.par junk -switch 2 1 1 1 1 145 5
mfclo64 $FRQ 09.par junk -switch 1 1 1 1
rm junk plot-junk.rep