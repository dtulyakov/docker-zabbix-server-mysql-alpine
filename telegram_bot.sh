#!/bin/sh

TOKEN='Сюда пихаем токен'

if [ $# -ne 3 ]; then echo 'Error! You must to define three params' && exit 1; fi

CHAT_ID="$1"
SUBJECT="$2"
MESSAGE="$3"

# Определяем emoji для темы сообщения
if [ "$SUBJECT" = "PROBLEM" ];
then
        ICON="🔥"
elif [ "$SUBJECT" = "OK" ];
then
        ICON="✅"
else
        ICON="⚠️"
fi

curl -ks --header 'Content-Type: application/json' --request 'POST' --data "{\"chat_id\":\"${CHAT_ID}\",\"text\":\"$ICON ${SUBJECT}\n${MESSAGE}\"}" "https://api.telegram.org/bot${TOKEN}/sendMessage"
