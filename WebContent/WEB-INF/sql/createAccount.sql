create user travellover@localhost identified by 'travelloverpw';
create user 'travellover'@'%' identified by 'travelloverpw';

use mysql;
select * from user;

grant all privileges on *.* to 'travellover'@localhost identified by 'travelloverpw' with grant option;
grant all privileges on *.* to 'travellover'@'%' identified by 'travelloverpw' with grant option;

flush privileges;