##### 03.uptime Check #####

day=`uptime |awk '{printf $3}' 2>/dev/null`

if [ 1 -gt $day ]; then
  echo "##### 03 uptime Check [Alert] Uptime= $day #####"
else
  echo "##### 03 uptime Check [SUCCESS] #####"
fi

