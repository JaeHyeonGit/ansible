##### 04.Disk Volume Check #####

df -hP | grep -v none > disk_act1.txt
awk '{print $5, $6}' disk_act1.txt > disk_act2.txt
cat disk_act2.txt | tr -d '%' > disk_act3.txt
awk '80 < $1' disk_act3.txt > disk_act4.txt
check=`cat disk_act4.txt | wc -l`

if [ 1 -ne $check ]; then
  echo "##### 04 Disk Volume Check [ALERT] #####"
  cat disk_act4.txt
else
  echo "##### 04 Disk Volume Check [SUCCESS] #####"
  cat disk_act4.txt
fi

