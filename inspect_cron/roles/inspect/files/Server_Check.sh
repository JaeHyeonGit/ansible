#!bin/bash
today=`date +%y-%m-%d`

echo "$today Server inspecting..."
sh 01.ntp_check.sh

sh 02.sys_check.sh

sh 03.uptime_check.sh

sh 04.disk_volume_check.sh

echo "Inspect Done "
