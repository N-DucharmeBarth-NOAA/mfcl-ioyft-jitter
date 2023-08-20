
#!/bin/bash
# prep files for condor job execution
dos2unix ${1}/wrapper_doitall.sh
dos2unix ${1}/osg_dir.txt
dos2unix ${1}/doitall.sh

# change permissions on wrapper script
chmod 777 ${1}/wrapper_doitall.sh
chmod 777 ${1}/doitall.sh