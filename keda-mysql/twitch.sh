#!/bin/bash
channel=$1
moderator="my_moderator_login"
#mysql_config_editor set --login-path=local --host=192.168.122.94 --port=31129 --user=root --password
#twitch token -u -s moderator:read:chatters &> /dev/null
id=$(twitch api get /users -q login=${channel} | jq .data[].id|xargs)
moderator_id=$(twitch api get /users -q login=${moderator} | jq .data[].id|xargs)
while [ 1 ]; do
chatters=$(twitch api get /chat/chatters -q broadcaster_id=${id} -q moderator_id=${moderator_id} | jq .data[].user_login | xargs)
echo "DELETE FROM \`onlineusers\`;" | mysql --login-path=local kedaapp
for user in $chatters; do
	echo "INSERT INTO \`onlineusers\`(\`login\`,\`status\`) VALUES ('${user}','online');" | mysql --login-path=local kedaapp
done
echo "SELECT * FROM \`onlineusers\`;" | mysql --login-path=local kedaapp
sleep 10

done
