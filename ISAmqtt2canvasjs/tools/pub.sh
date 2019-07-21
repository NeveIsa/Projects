while true
do

rand=`python -c 'from random import randint;import math;print randint(1,10000)'`
echo $rand
mosquitto_pub -t hello/world -m "$rand"
#sleep 0.01
done
