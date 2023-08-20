
#!/bin/bash
# prep files for condor job execution
dos2unix ${1}/wrapper_doitall.sh
dos2unix ${1}/osg_dir.txt
dos2unix ${1}/doitall.sh

# change permissions on wrapper script
chmod 777 ${1}/wrapper_doitall.sh
chmod 777 ${1}/doitall.sh

# create Start.tar.gz
orig_wd=$(pwd)
while read p; do
  cd ${orig_wd}/$p
  tar -czf Start.tar.gz mfcl.cfg *.txt yft.*
  cd $orig_wd
done <${1}/osg_dir.txt
unset orig_wd
