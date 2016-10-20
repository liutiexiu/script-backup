#query for hbase

#find SocketTimeout of region
grep "java.net.SocketTimeoutException: Call to c3-hadoop-srv-st" /data/soft/misms/logs/application.log | grep CST | awk '{print $4" "$11}' | sed -e "s/:.. /:xx /g" | uniq -c
