#######################
## some unknown bash ##
#######################

#get specific line from text file
head -n 10 fileName | tail -n 1
awk 'NR==10' fileName
sed '10!d' fileName

#sum of lines
awk '{s+=$1} END {print s}' fileName