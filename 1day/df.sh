#! /bin/bash

THRESHOLD=30

df -h | grep '^/' | awk '{ print $5 " " $6 }' | while read output;
do
	usage=$(echo $output | awk '{ print $1 }' | sed 's/%//g')
	partition=$(echo $output | awk '{ print $2 }')

	if [ $usage -ge $THRESHOLD ]; then
		echo "경고: 파티션 $partition 사용량이 $usage% 로 임계점 $THRESHOLD% 를 초과했습니다."
	fi
done
