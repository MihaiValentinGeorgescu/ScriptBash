current_datetime=$(date)
echo "current date and time is: $current_datetime"

user=$(whoami)
echo "current user is: $user"

internalIP=$(ifconfig | grep inet | awk '{print $2}' | head -n 1)
echo "internal ip: $internalIP"

nameOfDistribution=$(lsb_release -a | grep Description | head -n 2)
echo "name and version of distribution: $nameOfDistribution"

usedSpace=$(df -h | awk 'NR==2 {print "Used:" $3 }')
echo "used space: $usedSpace"

freeSpace=$(df -h | awk 'NR==2 {print "Free:" $4 }')
echo "free space: $freeSpace"

totalMemory=$(free -h | grep Mem | awk '{print $2}')
echo "total memory: $totalMemory"

free_memory=$(free -h | grep Mem | awk '{print $4}')
echo "free memory: $free_memory"

cpu_cores=$(lscpu | grep '^CPU(s):' | awk '{print $2}')
echo "cpu cores: $cpu_cores"

cpu_frequency=$(lscpu | grep '^CPU MHz:' | awk '{print $3}')
echo "cpu frequency: $cpu_frequency"
