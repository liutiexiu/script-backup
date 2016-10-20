#query for hbase

MT_LOG_PATH='mtPath'

#find SocketTimeout of region
grep "java.net.SocketTimeoutException: Call to c3-hadoop-srv-st" $MT_LOG_PATH | grep CST | awk '{print $4" "$11}' | sed -e "s/:.. /:xx /g" | uniq -c

#count slow method
grep "SLOW METHOD" $MT_LOG_PATH | awk -F "," '{print $1}' | awk -F ":" '{print $1":"$2}' | sed -e 's/.$/x/g' | uniq -c



NGINX_LOG_PATH='nginxPath'

#count 500 in nginx
cat $NGINX_LOG_PATH | awk -F "\t" '{print $4"\tcode="$18}' | grep "code=500" | awk -F ":" '{print $1":"$2":"$3}' | uniq -c

#find 500 url
cat $NGINX_LOG_PATH | awk -F "\t" '{print $4"\t"$10"\t"$5"\tcode="$18}' | grep "code=500"
