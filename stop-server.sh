ps -ef | grep mariadbd | grep -v grep | awk '{print $2}' | xargs kill
