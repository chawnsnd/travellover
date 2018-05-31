use travellover;

-- attraction
create table `attraction`(
	`attraction_id` int not null auto_increment comment '여행지 아이디',
	`name` varchar(20) COLLATE utf8_bin not null comment '여행지 이름',
	`address` varchar(50) COLLATE utf8_bin comment '여행지 주소',
	`phone` varchar(20) comment '여행지 전화번호',
	`content` varchar(1000) COLLATE utf8_bin not null comment '여행지 설명',
	`category` varchar(20) COLLATE utf8_bin comment '여행지 카테고리',
	`image` varchar(20) comment '여행지 이미지 URL',
	`scope` int not null default 0 comment '여행지 별점',
	`scope_count` int not null default 0 comment '여행지 별점 수',
	`regdate` timestamp not null default current_timestamp comment '여행지 등록일',
	primary key(`attraction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='여행지 정보';

-- user
create table `user`(
	`email` varchar(50) not null comment '유저 이메일',
	`nickname` varchar(20) COLLATE utf8_bin not null comment '유저 닉네임',
	`password` varchar(50) COLLATE utf8_bin not null comment '유저 비밀번호',
	`status` varchar(20) not null default "general" comment '유저 상태',
	`regdate` timestamp not null default current_timestamp comment '유저 등록일',
	primary key(`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='유저 정보';

-- comment
create table `comment`(
	`comment_id` int not null auto_increment comment '댓글 아이디',
	`attraction_id` int not null comment '여행지 아이디',
	`user_email` varchar(50) not null comment '등록자 아이디',
	`content` varchar(200) COLLATE utf8_bin comment '댓글 내용',
	`moddate` timestamp not null default current_timestamp comment '댓글 수정일',
	`state` varchar(20) not null default "general" comment '댓글 상태',
	primary key(`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='댓글 정보';
ALTER TABLE comment ADD FOREIGN KEY (attraction_id) REFERENCES attraction(attraction_id) on update cascade on delete cascade;
ALTER TABLE comment ADD FOREIGN KEY (user_email) REFERENCES user(email) on update cascade on delete cascade;
