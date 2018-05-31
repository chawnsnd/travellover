use travellover;

-- attraction
create table `attraction`(
	`attraction_id` int not null auto_increment comment '������ ���̵�',
	`name` varchar(20) COLLATE utf8_bin not null comment '������ �̸�',
	`address` varchar(50) COLLATE utf8_bin comment '������ �ּ�',
	`phone` varchar(20) comment '������ ��ȭ��ȣ',
	`content` varchar(1000) COLLATE utf8_bin not null comment '������ ����',
	`category` varchar(20) COLLATE utf8_bin comment '������ ī�װ�',
	`image` varchar(20) comment '������ �̹��� URL',
	`scope` int not null default 0 comment '������ ����',
	`scope_count` int not null default 0 comment '������ ���� ��',
	`regdate` timestamp not null default current_timestamp comment '������ �����',
	primary key(`attraction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='������ ����';

-- user
create table `user`(
	`email` varchar(50) not null comment '���� �̸���',
	`nickname` varchar(20) COLLATE utf8_bin not null comment '���� �г���',
	`password` varchar(50) COLLATE utf8_bin not null comment '���� ��й�ȣ',
	`status` varchar(20) not null default "general" comment '���� ����',
	`regdate` timestamp not null default current_timestamp comment '���� �����',
	primary key(`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='���� ����';

-- comment
create table `comment`(
	`comment_id` int not null auto_increment comment '��� ���̵�',
	`attraction_id` int not null comment '������ ���̵�',
	`user_email` varchar(50) not null comment '����� ���̵�',
	`content` varchar(200) COLLATE utf8_bin comment '��� ����',
	`moddate` timestamp not null default current_timestamp comment '��� ������',
	`state` varchar(20) not null default "general" comment '��� ����',
	primary key(`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='��� ����';
ALTER TABLE comment ADD FOREIGN KEY (attraction_id) REFERENCES attraction(attraction_id) on update cascade on delete cascade;
ALTER TABLE comment ADD FOREIGN KEY (user_email) REFERENCES user(email) on update cascade on delete cascade;
