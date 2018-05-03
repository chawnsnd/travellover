--계정 등록
create user travellover@localhost identified by 'travelloverpw';
create user 'travellover'@'%' identified by 'travelloverpw';

--계정 확인
use mysql;
select * from user;

--권한 설정(테이블 생성 후 진행해야 함)
grant all privileges on *.* to 'travellover'@localhost identified by 'travelloverpw' with grant option;
grant all privileges on *.* to 'travellover'@'%' identified by 'travelloverpw' with grant option;

flush privileges;