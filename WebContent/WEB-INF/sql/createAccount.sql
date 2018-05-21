--계정 생성
create user travellover@localhost identified by 'travelloverpw';
create user 'travellover'@'%' identified by 'travelloverpw';

--계정 정보 확인
use mysql;
select * from user;

--계정 권한 부여
grant all privileges on *.* to 'travellover'@localhost identified by 'travelloverpw' with grant option;
grant all privileges on *.* to 'travellover'@'%' identified by 'travelloverpw' with grant option;

flush privileges;