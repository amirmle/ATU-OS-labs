#!/bin/bash

TOKEN="6521510069:AAGnFG8nHudkvjgAD77ZgFANYaaBrLkIaT8"
CHAT_ID="232465414"
MASSAGE="HELLO"
DATE=$(date)
SSH=$SSH_CLIENT

if [ "$SSH_CLIENT" = "" ]
then 
SSH="local access"

fi


#curl -s "https://api.telegram.org/bot$TOKEN/getUpdates"

#curl -s -X POST https://api.telegram.org/bot$TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="$MESSAGE" 
curl -s -X POST -H 'Content-Type: application/json' -d "{\"chat_id\": $CHAT_ID, \"text\": \"$USER with  $HOSTNAME host name logged in \n Date : $DATE \n IP : $SSH \"}" "https://api.telegram.org/bot$TOKEN/sendMessage"


#curl 'https://api.telegram.org/bot$TOKEN/sendMessage?chat_id=$CHAT_ID&text=$MESSAGE'

#1002029549893
#6521510069
