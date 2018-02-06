#######################
## some unknown bash ##
#######################

#display git branch
function git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
  echo "("${ref#refs/heads/}") ";
}
PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}\007"'
PS1="[\[\033[1;32m\]\w\[\033[0m\]] \[\033[1;35m\]\$(git_branch)\[\033[0m\]$ "

#get specific line from text file
head -n 10 fileName | tail -n 1
awk 'NR==10' fileName
sed '10!d' fileName

#sum of lines
awk '{s+=$1} END {print s}' fileName


#check process uptime
ps -p 37014 -o stime,etime
#STIME     ELAPSED
#16:29       30:31

ps -eo pid,lstart,cmd
