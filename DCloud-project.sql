/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/3/26 23:13:26                           */
/*==============================================================*/


drop index Index_id on activity;

drop table if exists activity;

drop index Index_id on activityResult;

drop table if exists activityResult;

drop index Index_id on attendance;

drop table if exists attendance;

drop index Index_id on course;

drop table if exists course;

drop index Index_id on dictionary;

drop table if exists dictionary;

drop index Index_id on dictionary_detail;

drop table if exists dictionary_detail;

drop index Index_id on group;

drop table if exists group;

drop index Index_id on menu;

drop table if exists menu;

drop index Index_id on message;

drop table if exists message;

drop index Index_id on power;

drop table if exists power;

drop index Index_id on role;

drop table if exists role;

drop index Index_id on role_power;

drop table if exists role_power;

drop index Index_id on school;

drop table if exists school;

drop index Index_id on user;

drop table if exists user;

drop index Index_id on user_role;

drop table if exists user_role;

/*==============================================================*/
/* Table: activity                                              */
/*==============================================================*/
create table activity
(
   id                   bigint not null,
   name                 varchar(20) not null,
   is_grouptask         tinyint not null,
   purpose              varchar(255) not null,
   score                varchar(255) not null,
   task_describe        varchar(255),
   start_time           datetime,
   end_time             datetime,
   state                int not null,
   is_overtime          tinyint not null,
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on activity
(
   id
);

/*==============================================================*/
/* Table: activityResult                                        */
/*==============================================================*/
create table activityResult
(
   id                   bigint not null,
   user_id              bigint not null,
   activity_id          bigint not null,
   result               varchar(255) not null,
   score                varchar(255),
   is_partake           tinyint not null,
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on activityResult
(
   id
);

/*==============================================================*/
/* Table: attendance                                            */
/*==============================================================*/
create table attendance
(
   id                   bigint not null,
   student_id           bigint not null,
   course_id            bigint not null,
   start_time           datetime not null,
   end_time             datetime not null,
   result               tinyint not null,
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on attendance
(
   id
);

/*==============================================================*/
/* Table: course                                                */
/*==============================================================*/
create table course
(
   id                   bigint not null,
   name                 varchar(20) not null,
   code                 varchar(20) not null,
   class_name           varchar(50) not null,
   semester             varchar(50) not null,
   image                varchar(255),
   learn_require        varchar(255),
   teach_progress       varchar(255),
   exam_schedule        varchar(255),
   school_id            bigint,
   is_school_lesson     tinyint not null,
   teacher_id           bigint not null,
   student_id           bigint,
   activity_id          bigint,
   message_id           bigint,
   is_join              tinyint not null,
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on course
(
   id
);

/*==============================================================*/
/* Table: dictionary                                            */
/*==============================================================*/
create table dictionary
(
   id                   bigint not null,
   code                 varchar(20) not null,
   ¿‡–Õ√˚≥∆                 varchar(50) not null,
   is_deleted           smallint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on dictionary
(
   id
);

/*==============================================================*/
/* Table: dictionary_detail                                     */
/*==============================================================*/
create table dictionary_detail
(
   id                   bigint not null,
   code                 varchar(20) not null,
   type_code            bigint not null,
   name                 varchar(50) not null,
   value                varchar(50) not null,
   is_default           char(10) not null,
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on dictionary_detail
(
   id
);

/*==============================================================*/
/* Table: group                                                 */
/*==============================================================*/
create table group
(
   id                   bigint not null,
   course_id            bigint not null,
   name                 varchar(50) not null,
   parent_id            int not null,
   student_id           varchar(255),
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on group
(
   id
);

/*==============================================================*/
/* Table: menu                                                  */
/*==============================================================*/
create table menu
(
   id                   bigint not null,
   parent_id            bigint not null,
   name                 varchar(50) not null,
   sort                 varchar(255) not null,
   icon                 varchar(255) not null,
   url                  varchar(255) not null,
   type                 bigint not null,
   is_menu              tinyint not null,
   is_visible           tinyint not null,
   is_page              tinyint not null,
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on menu
(
   id
);

/*==============================================================*/
/* Table: message                                               */
/*==============================================================*/
create table message
(
   id                   bigint not null,
   course_id            bigint not null,
   type                 int not null,
   content              varchar(255) not null,
   start_time           varchar(255) not null,
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on message
(
   id
);

/*==============================================================*/
/* Table: power                                                 */
/*==============================================================*/
create table power
(
   id                   bigint not null,
   name                 varchar(20) not null,
   parent_id            bigint not null,
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on power
(
   id
);

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role
(
   id                   bigint not null,
   name                 varchar(20) not null,
   is_student           tinyint not null,
   role_describe        varchar(255),
   state                int not null,
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on role
(
   id
);

/*==============================================================*/
/* Table: role_power                                            */
/*==============================================================*/
create table role_power
(
   id                   bigint not null,
   role_id              bigint,
   power_id             bigint,
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on role_power
(
   id
);

/*==============================================================*/
/* Table: school                                                */
/*==============================================================*/
create table school
(
   id                   bigint not null,
   name                 varchar(50) not null,
   parent_id            bigint not null,
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on school
(
   id
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id                   bigint not null,
   name                 varchar(20) not null,
   nickname             varchar(20),
   image                varchar(255),
   sno                  varchar(20) not null,
   sex                  int,
   telphone             varchar(20) not null,
   email                varchar(50) not null,
   password             varchar(20) not null,
   birthdate            datetime,
   exp                  int not null,
   state                int not null,
   school_id            bigint,
   education            int,
   login_type           int not null,
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on user
(
   id
);

/*==============================================================*/
/* Table: user_role                                             */
/*==============================================================*/
create table user_role
(
   id                   bigint not null,
   role_id              bigint not null,
   user_id              bigint not null,
   is_deleted           tinyint not null,
   create_time          datetime not null,
   update_time          datetime not null,
   extend_json          varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Index: Index_id                                              */
/*==============================================================*/
create index Index_id on user_role
(
   id
);

alter table activityResult add constraint FK_Reference_12 foreign key (user_id)
      references user (id) on delete restrict on update restrict;

alter table activityResult add constraint FK_Reference_13 foreign key (activity_id)
      references activity (id) on delete restrict on update restrict;

alter table attendance add constraint FK_Reference_16 foreign key (course_id)
      references course (id) on delete restrict on update restrict;

alter table attendance add constraint FK_Reference_17 foreign key (student_id)
      references user (id) on delete restrict on update restrict;

alter table course add constraint FK_Reference_10 foreign key (student_id)
      references user (id) on delete restrict on update restrict;

alter table course add constraint FK_Reference_11 foreign key (activity_id)
      references activity (id) on delete restrict on update restrict;

alter table course add constraint FK_Reference_19 foreign key (message_id)
      references message (id) on delete restrict on update restrict;

alter table course add constraint FK_Reference_8 foreign key (school_id)
      references school (id) on delete restrict on update restrict;

alter table course add constraint FK_Reference_9 foreign key (teacher_id)
      references user (id) on delete restrict on update restrict;

alter table dictionary_detail add constraint FK_Reference_20 foreign key (type_code)
      references dictionary (id) on delete restrict on update restrict;

alter table group add constraint FK_Reference_14 foreign key (course_id)
      references course (id) on delete restrict on update restrict;

alter table group add constraint FK_Reference_15 foreign key (id)
      references user (id) on delete restrict on update restrict;

alter table menu add constraint FK_Reference_21 foreign key (parent_id)
      references menu (id) on delete restrict on update restrict;

alter table message add constraint FK_Reference_18 foreign key (course_id)
      references course (id) on delete restrict on update restrict;

alter table power add constraint FK_Reference_2 foreign key (parent_id)
      references power (id) on delete restrict on update restrict;

alter table role_power add constraint FK_Reference_3 foreign key (role_id)
      references role (id) on delete restrict on update restrict;

alter table role_power add constraint FK_Reference_4 foreign key (power_id)
      references power (id) on delete restrict on update restrict;

alter table user add constraint FK_Reference_1 foreign key (school_id)
      references school (id) on delete restrict on update restrict;

alter table user_role add constraint FK_Reference_5 foreign key (user_id)
      references user (id) on delete restrict on update restrict;

alter table user_role add constraint FK_Reference_6 foreign key (role_id)
      references role (id) on delete restrict on update restrict;

