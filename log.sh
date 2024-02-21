#! /bin/bash

# 사용자로부터 로그 파일의 경로와 검색할 패턴 입력받기
read -p "Enter the path to the log file: " logfile
read -p "Enter the pattern to search for: " pattern

# grep으로 패턴 검색 후 wc -l로 라인 수 계산
count=$(grep -c "$pattern" "$logfile")

# 결과 출력
echo "The pattern '$pattern' was found $count times in the log file '$logfile'."
