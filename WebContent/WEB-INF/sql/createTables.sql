use travellover;

create table `attraction`(
	`attraction_id` int not null auto_increment,
	`name` varchar(20) COLLATE utf8_bin not null,
	`address` varchar(50) COLLATE utf8_bin,
	`phone` varchar(20) comment,
	`content` varchar(2000) COLLATE utf8_bin not null,
	`category` varchar(20) COLLATE utf8_bin,
	`image` varchar(200),
	`scope` int not null default 0,
	`scope_count` int not null default 0,
	`regdate` timestamp not null default current_timestamp,
	primary key(`attraction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

create table `user`(
	`email` varchar(50) not null,
	`nickname` varchar(20) COLLATE utf8_bin not null,
	`password` varchar(50) COLLATE utf8_bin not null,
	`status` varchar(20) not null default "GENERAL",
	`regdate` timestamp not null default current_timestamp,
	primary key(`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

create table `comment`(
	`comment_id` int not null auto_increment,
	`attraction_id` int not null comment,
	`user_email` varchar(50) not null comment,
	`content` varchar(200) COLLATE utf8_bin comment,
	`moddate` timestamp not null default current_timestamp,
	`state` varchar(20) not null default "GENERAL" comment,
	primary key(`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
ALTER TABLE comment ADD FOREIGN KEY (attraction_id) REFERENCES attraction(attraction_id) on update cascade on delete cascade;
ALTER TABLE comment ADD FOREIGN KEY (user_email) REFERENCES user(email) on update cascade on delete cascade;
