=========================
-- Linux 코딩 자료
-- 서버접속 
=========================

-- ping test
C:\Users\smhrd> ping raspberrypi.local
C:\Users\smhrd> ping 172.30.1.13
  172.30.1.13의 응답: 바이트=32 시간=2ms TTL=63
  172.30.1.13의 응답: 바이트=32 시간=2ms TTL=63
  172.30.1.13의 응답: 바이트=32 시간=1ms TTL=63
  172.30.1.13의 응답: 바이트=32 시간=2ms TTL=63

-- 구글 putty 다운로드 
-- telnet 프로그램
-- 원격지 서버에 접속하여 운영할 수 있는 프로그램..
putty 다운로드 및 설치

-- Putty 설정 및 접속
host: 172.30.1.13
saved : Ras-server

-- Raspberry 접속
stduser / stduser

-------------------------
-- 사용자의 생성(관리자 권한의 작업)

sudo useradd -g stduser -m jangjw
sudo passwd jangjw

-- 신규 생성된 사용자로 접속
jangjw / jangjw
pwd
/home/jangjw

=========================
-- Linux 2장
-- 기초 명령어
=========================
date  : 현재 날짜확인
date '+%Y-%m-%d'
cal   : 현재 달의 달력을 확인
clear : 화면을 지운다.

logname : 최초 로그인한 계정
users : 로그인한 사용자 목록

whoami : 현재 자신이 누구인지 확인
who am i : 최초 접속자 확인
who    : 어떤 사용자가 접속되어있는지 확인

hostname : 서버이름 확인
pwd  : 현재 디렉토리 위치 확인

echo have a good time  : 입력 문자열 출력
echo -e "좋은 하루입니다.\n행복하세요"
echo "오늘은 $(date '+%Y-%m-%d')일 입니다."
echo -e "과  정 : OOOOO OOOOO 개발자 과정 \n기  간 : 2023.00.00~2023.00.00 \n담  임 : OOO \n훈 련생 : 홍길동 "
env    : 로그인한 계정의 환경 확인
env | grep HOME -> 필요한 단어 선택적 조회
history : 입력한 명령 내역 조회

-- read : 키보드로 부터 입력받는다.
read imsi
안녕하세요
echo $imsi

=========================
-- Linux 3장
-- 파일, 디랙토리 관리 
=========================
-- 파일을 생성하기
touch : 빈파일을 만듬.
touch emptyfile  
편집기를 사용: vi, nano 
복사/옮기는법: cp, mv

-- file의 복사,이동(재명명), 삭제
cp from-file to-file
cp -r from-dir to-dir

mv 원본파일 목적파일
mv from-file to-file
mv -i from-file to-file

-- 리다이렉트: 
-- 출력 방향을 변경: /etc/passws 내용을 파일(tmp_pass)로 저장
-- > : 출력 방향을 바꾸는 역할을 한다.
cat /etc/passwd > tmp_pass  
   > 파일을 생성한다.
  >> 파일을 생성하고 추가한다.

-------------------------
-- file의 내용 확인
-- cat  파일명
cat  파일명
cat /etc/passwd 
cat -n /etc/passwd  -- 줄 번호 확인ifcon
cat /etc/passwd |grep bigdata

more 한 페이지씩 조회 방향키 사용가능 
more /etc/passwd 

less : 한 페이지씩 조회 방향키 사용가능 
less /etc/passwd 

tail : 파일의 끝부분 조회 
  -[n] : 해당 수의 라인조회
  -f : 마지막 부분을 계속 조회 

head : 파일의 앞부분 조회 
  -[n] : 해당 수의 라인조회

-- grep: file내 문자열 
grep bigdata /etc/passwd
grep stduser /etc/passwd
  -n : 발견된 문자열의 라인출력
  -H : 파일명과 함께 출력
  -r : 현재위치의 하위 디렉토리 검색

-------------------------
-- 파일의 목록 확인
ls -F : 현재 디렉토리의 파일목록(@:링크파일,/:디렉토리,*:실행)
ls -al : 현재 디렉토리의 파일목록을 상세하게 조회
ls -R : 하위 디랙토리 조회

ls -F 
  /: 디렉토리, 
  @: 링크파일, 
  *: 실행파일,
   : 일반파일

ls -l /etc
1 2   3   4    5 6    7       8    9            10      
d rwx r-x r-x  4 root root    4096 Oct 26 14:15 udev
1 : 파일의 속성
  - : 일반파일
  d : 디렉토리
  l : 링크파일
2: 자신의 파일의 접근 권한
  r : read, w:write, x:excute
3: 그룹의 파일의 접근 권한
4: 모든사람  파일 접근 권한
5: node 수
6: 자신(소유자), 7:그룹 
8: 파일의 크기
9: 파일 생성일자
10: 파일의 이름  

-------------------------
-- 디렉토리의 생성/삭제
mkdir jangjw
  -p : 하위 디렉토리까지 한번에 생성..
  
mkdir -p ./jangjw/shin/in/ho

tree 디랙토리 구조확인
	
rmdir jangjw -> 현재 디렉토리에서 삭제
rm jangjw -> 하위 디렉토리 모두 삭제
  -r : 하위 디렉토리 모두 삭제
  -f : 삭제 물어보지 않고 삭제
rm -r file-name 또는 directory-name 
rm -rf ./jangjw/

-- 작업 디렉토리 이동
cd : 경로이동
  ~: 홈 디렉토리   
cd enter : 홈디렉토리 

-- 경로: 상대경로, 절대경로
  절대경로: /에서 시작
  상대경로: 현재위치에서 시작  
     .: 현재 디렉토리
    ..: 상위 디렉토리  

cd   : 디렉토리 옮겨가는 명령
cd . : 현재 디렉토리
cd ..: 상위 디렉토리
-- 절대 디렉토리는 루트에서 시작된다.
cd /etc/systemd/network
-- 상대 디렉토리는 현재 위치에서 시작된다.
cd ../../etc

-------------------------
-- 단어 갯수 확인
wc : word count
 옵션: 줄(-l), 단어(-w), 문자(-c)의 수

ls -l | wc -l

-- 메시지보내기
wall : 전체 접속자에게 메시지 보냄
write 사용자 계정 [ttyname]

-- 서버 접속후 확인해야 할 사항
hostname
whoami
pwd
--
ls -l
who
uname -a

-------------------------
-- 파일 검색
find . -name '*.txt'

find . -type f -name '*txt'
find . -type f -name '*txt' -exec ls -l {} \;
find . -type f -exec ls -l {} \;
find . -type d 
find . -empty
find . -type d |wc -l
   d : 디렉토리, f : file, l: 링크파일
find . -user stduser

find ./* -size +512c -size -1024c
    b : 블록단위
    c : byte
	k : kbyte
	w : 2byte 워드
find ./* -type f -name '*.jpg' -size +512k -size -1024k -exec ls -l {} \;	
	

-- 링크파일 생성
ln -s jangjw h : h->jangjw

-- 명령어 위치확인
which cp  : 명령어의 위치를 확인
whereis cp : 명령어, 메뉴얼의 위치를 확인

man cp  : 메뉴얼 보기

=======================
-- Linux 4장 편집기
=========================

vi 파일명
  편집상태 이동
  a, i, o, O  
  a: 커저의 뒤쪽에 삽입
  i: 커저의 앞쪽에 삽입
  o: 커저의 아래쪽에 삽입
  O: 커저의 위쪽에 삽입
  
  :wq - 저장하고 종료하기
  :q! - 편집문서 버리고 종료하기

명령모드
  [n]r  : 한 문자(char) 수정
  [n]dd : [n]줄 삭제  
  [n]x  : [n]문자를 삭제  
  [n]yy : [n]줄을 복사
      p : 복사한 줄을 붙여넣기
	 cw : 단어를 수정

	 gg : 문서의 처음으로 가기
      G : 문서의 마지막으로 가기
	 G
라인모드
	/문자열 -> 문자열에 커저이동
	:u -> 직전작업 취소
    :e! -> 현재 편집문서 버리고, 최초 문서로 다시읽어오기..	
	:[n] -> 해당라인으로 이동
	
	:set number  : 편집문서의 줄 번호를 부여
	:set nonumber: 편집문서의 줄 번호 취소
	
-- nano 에디터
nano myfile
 -.저장후 종료 : ctl+x > y > enter
 -.줄번호 보이기/감추기
   shift + alt + 3   
 -.단어찾기
   ctl+w
 -.단어바꾸기
   ctl+\
 -.한 줄 지우기
   ctl+k
 -.복사 및 붙어넣기
   alt+a, alt+6, ctl+u
   드래그 & 우측 마우스 클릭
 -.직전작업 취소(undo)
   alt+u
 -.다시 실행(redo)
   alt+e
 -. file의 첫, 마지막
   alt+\	첫 line으로	
   alt+/	마지막 line으로
 
-------------------------
--- 권한의 변경
-------------------------
-- ls -l -> 파일의 권한 부여 

- rw- r-- r--  1 jangjw jangjw    68 Mar 28 15:21 echo.txt
  6   4   4
-rw-r--r--
r : 읽기
w : 쓰기
x : 실행

4  2  1
r  w  x
0  0  1  = 1
0  1  0  = 2
0  1  1  = 3
1  0  0  = 4
1  0  1  = 5
1  1  0  = 6
1  1  1  = 7

755
-   rw-   r-x  r-x     1 stduser stduser 1960 Jun 29 02:29 na_jangjw
속성 자신의   그룹의  타인의 
   권한-u   권한-g  권한-o
u : user
g : group
o : other

-- 파일에 권한 부여	
chmod 755 na_jangjw
chmod u-x na_jangjw

-- ugo(user, group , other)
chmod u+x file-name
chmod ug+x file-name

-- 파일에 소유권 변경
chown centos sample.txt
chgrp centos salple.txt

chown centos:centos sample.txt

-------------------------
-- shell Program 작성하기

echo "안녕하세요" > sh-test
echo "echo  안녕하세요" > sh-test

[ 문제 ] 아래의 결과을 얻기위한 Shell Program를 작성하시오..
"proc.sh" 실행 파일을 만드시오.

-------------------------
-- 프로세스 확인
ps -ef | grep ssh
kill -9 pid

pstree  -- 프로세스를 트리형태로 조회

-- fg 실행
yes > /dev/null  -- 무한루프 실행
ctl+z 
bg

-- bg 실행
yes > /dev/null &

jobs

bg [잡 번호]
fg [잡 번호]

=========================
-- 시스템 관리자
=========================
-- 1.압축(xz) - 최근사용
xz 파일이름  -> 파일압축 파일이름.xz생성후 기존파일 삭제
xz -d 파일이름.xz  -> 압축해제
xz -l 파일이름.xz  -> 압축목록 조회
xz -k 파일이름 -> 파일압축 파일이름.xz생성후 기존파일 그대로둠

-- 2.압축(bzip2) - 최근사용
bzip2 파일이름
bzip2 -d 파일이름.bz2 (= bunzip2 파일이름.bz2)

-- 3.압축(gzip)
gzip : 확장명 gz으로 압축을 하거나 풀어준다
예) gzip 파일명  -> 압축
   gzip -d 파일명.gz -- 풀기
gunzip : “gzip -d”옵션과 동일한 명령어

-------------------------
-- 파일 묶기 명령(tar)  
tar : 확장명 tar로 묶음 파일을 만들어 주거나 묶음을 풀어 준다.
      -묶기와 풀기는 같은 디렉토리에서 진행된다.
동작 : c(묶기), x(풀기), t(경로확인), C(풀기 디렉토리 지정)
옵션 : f(필수), v(과정보이기), J(tar+xz), z(tar+gzip), j(tar+bzip2)

-- 사용 예
tar cvf my.tar /etc/sysconfig/ → 묶기
tar cvfJ my.tar.xz /etc/sysconfig/ → 묶기 + xz 압축
tar xvf my.tar → tar 풀기
tar xvfJ my.tar.xz /etc/sysconfig/ → xz 압축 해제 + tar 풀기

-- 현재 디렉토리 전체 묶기
tar cvf myzip.tar ./
-- 묶은 파일제외하고 모두 지우기
rm -rf `ls ./ |grep -v myzip.tar`

-- 현재 디렉토리에 풀기
tar xvf myzip.tar

------------------------------
-- 작업의 예약(Cron, At)
-- cron
-- 주기적으로 반복되는 일을 자동적으로 실행될 수 있도록 설정
-- 관련된 데몬(서비스)은“crond”, 관련 파일은 “/etc/crontab”
systemctl status crond

vi /etc/crontab 형식
분 시 일 월 요일 사용자 실행명령
예) 00 05 1 * * root cp -r /home /backup
# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name  command to be executed

01 3 15 * * root  run-parts /etc/cron.monthly
-- 분 시간 일 달 주 

-- run-parts : 해당 디렉토리안의 모든 명령 실행

-- cron 실습
-- 배치처리 셀 작성 
nano /etc/cron.monthly/myBackup.sh
  #!/bin/sh
  
  set $(date)
  fname="backup-$2$3tar.xz"
  
  tar cfJ /backup/$fname /home

-- 백업 폴더
mkdir /backup 

-- 실행권한 부여
chmod 755 mybackup.sh

-- 크론에 등록
30  *  *  *  * root /root/mybackup.sh

-- 크론 재구동
systemctl restart crond

---------------
-- at
일회성 작업을 예약
which at
sudo apt-get install -y at

-- 사용 예
 # at 3:00am tomorrow → 내일 새벽 3시
 # at now + 1 hours → 1시간 후
 # at now + 1 minutes → 1분 후
  at> ls > ./list.txt
  at> [Ctrl] + [D]
   
at> 프롬프트에 예약 명령어 입력 후 [Enter]
완료되면 [Ctrl] + [D]
확인 : # at -l
취소 : # atrm <작업번호>

-- at 실습
at 4:00 am tomorrow
at> dnf -y update

crl+D   -- 작업 예약을 완료되면한다. 

-- 예약 작업목록 조회 
at -l  
atq 

-- 작업취소
atrm 작업번호

------------------------------
-- network

-- 내컴퓨터의 네트워크 주소 확인
ifconfig

-- 경로 찾기
traceroute smhrd.or.kr

-- 서버주소 찾기
nslookup smhrd.or.kr

-- 네트워크에 서버연결 여부확인 
ping smhrd.or.kr
------------------------------
-- DB 접속
mysql  
root / 0000

-- 원격 DataBase MariaDB 접속 및 데이터 입력
INSERT INTO stduser (gwajung, irum, sexgb, mobile, major, location) 
  VALUES ( '지능형빅데이터분석서비스개발자과정', '신인호', '남', '010-2564-11255', '비전공', '광주 북구 임동');

COMMIT;

select * from stduser;

------------------------------
-- Web서버 접속
-- 웹서버 접속
http:raspberrypi.local/jangjw.html

cd /var/www/html/
su pi / raspberrypi

-- html 파일 작성

-- 링크 만들기
ln -s /home/jangjw/jangjw.html ./jangjw

-- 웹서버 홈에 파일 저장
sudo mv jangjw /var/www/html/

-------------------------
-- 시스템관리자(root권한)

-- 사용자 그룹 관리
-- groups, goupadd, groupmod, groupdel, gpasswd
--
groups : 사용자 소속된 그룹을 보여준다.
  groups, groups centos 

goupadd
  goupadd centos
  goupadd -g 2222 centos centos그룹을 생성하면서 ID를 2222로 지정한다.
  goupadd -g main -G sub user1 
     user1을 생성하면서 주그룹을 main으로 서브그룹을 보조그룹으로 가입시킨다.

groupmod : 그룹의 속성을 변경한다.
  groupmod -n mygroup centos -> centos 그룹이름을 mygroup으로 변경  

gpasswd
  gpasswd newgroup -> newgroup그룹의 암호 지정
  gpasswd -A newuser newgroup -> newuser 사용자를 newgroup그룹의 관리자로 지정
  gpasswd -a user1   newgroup -> user1을 newgroup그룹 사용자로 추가
  gpasswd -d user1   newgroup -> user1을 newgroup그룹 사용자사용자에서 제거

groupdel
  groupdel centos centos 그룹 삭제
  
---------------------
-- 사용자 관리
-- chage, adduser, useradd, passwd, usermod, userdel
-- 관리자(root) 계정으로 접속

-- 접속확인
logname

-- 사용자 생성
-- sudo useradd
-- sudo passwd shjangjw
sudo useradd -u 1111     shjangjw
sudo useradd -g mygroup  shjangjw
sudo useradd -d /home/shjangjw shjangjw
sudo useradd -s /bin/csh shjangjw

-- 암호, 홈 자동생성
sudo adduser shjangjw

-- 신규 생성된 사용자로 접속
shjangjw / shjangjw
/home/shjangjw

-- 신규 생성된 사용자 조회
tail -20 /etc/passwd
grep /home/ /etc/passwd

passwd 파일의 내용
shjangjw:x:1002:1002::/home/shjangjw:/bin/bash
   계정ID
   암호
   user  ID 
   Group ID 
   설명
   홈디렉토리
   사용하는 쉘

-- 암호및 속성 변경
passwd shin

chage : 사용자의 암호를 주기적으로 변경하도록 설정한다.
  chage -l centos -> 지정한 계정의 패스워드 만기 정보 확인
  chage -m 2 centos -> 암호변경후 최소2일은 사용해야함.
  chage -M 30 centos -> 암호변경후 최대30일 까지 사용해야함.
  chage -E 2026/12/12 centos -> 암호만료일자 2026/12/12까지 사용함.
  
usermod : 사용자 옵션변경 useradd 옵션과 동일
  usermod -g root newuser -> newuser 사용자의 그룹을 root 그룹으로 변경

-- 개인 계정으로 접속후, 
-- 다른 사용자 홈디렉토리 파일 수정 불가함
mkdir
echo 다른 사용자 홈에 파일 생성 > acc_file  

--
- 다른 계정으로 접속
su stduser / stduser

whoami 

logname
whoami

---------------
-- 사용자 삭제 관리자 권한으로 접속
su - pi
암호: raspberrypi

-- 삭제명령
userdel
  -rf
  -f

-- 삭제확인
cat /etc/passwd

-- 리눅스 시작과 종료
reboot : 다시시작
-- 종료
poweroff, 
halt
shutdown -h now
shutdown -P now 
  -P +10 -> 10분후에 종료
  -r 13:00 -> 13시에 재부팅
  -c  -> 예약된 shutdown 취소
  -k +15 -> 접속한 사용자에게 15분 후에 종료 메시지 전송
  
halt -p 
init 0

-- 재시작
shutdown -r now 
reboot
init 6

-----------------------------
0장. 들어가며..
1장. 실습환경 구축
2장. CentOS Linux 소개
3장. CentOS Linux 설치  
4장. 서버 구축을 위한 필수 개념과 명령어
5장. X윈도우를 사용하자	--	283
6장. 하드디스크 관리와 사용자별 공간할당(6장)	--	333
7장. 쉘 스크립트 프로그래밍(7장)	--	429
8장. 원격지 시스템 관리하기(8장)	--	461
9장. 네임 서버 설치와 운영(9장)	--	483
10장. 메일 서버 설치와 운영(10장)	--	527
11장. 데이터베이스 서버 구축과 운영(11장)	--	573
12장. 웹 서버 설치와 운영(12장)	--	629
13장. FTP 서버 설치와 운영(13장)	--	669
14장. NFS 서버 설치와 운영(14장)	--	683
15장. Samba 서버 설치와 운영(15장)	--	693
16장. DHCP 서버 설치와 운영(16장)	--	709
