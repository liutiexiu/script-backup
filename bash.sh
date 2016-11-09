#######################
## some unknown bash ##
#######################

#get specific line from text file
head -n 10 fileName | tail -n 1
awk 'NR==10' fileName
sed '10!d' fileName
