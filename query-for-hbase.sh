#query for hbase

PATH='somepath'

#find SocketTimeout of region
grep "java.net.SocketTimeoutException: Call to c3-hadoop-srv-st" $PATH | grep CST | awk '{print $4" "$11}' | sed -e "s/:.. /:xx /g" | uniq -c

#count slow method
grep "SLOW METHOD" $PATH | awk -F "," '{print $1}' | awk -F ":" '{print $1":"$2}' | sed -e 's/.$/x/g' | uniq -c
