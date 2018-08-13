-- auto-generated definition
create table article
(
  id       int auto_increment
    primary key,
  name     varchar(45) null,
  type     varchar(45) null,
  content  longtext    null,
  author   varchar(50) null,
  EditTime datetime    null,
  isTop    int         null
);

-- auto-generated definition
create table category
(
  id        int unsigned auto_increment
    primary key,
  name      varchar(45) not null,
  parent_id int         null,
  type      varchar(45) null,
  uri       varchar(80) null
);

-- auto-generated definition
create table form
(
  id        int auto_increment
    primary key,
  name      varchar(20) null,
  publish   varchar(20) null,
  categoris varchar(20) null,
  articles  varchar(20) null,
  constraint form_id_uindex
  unique (id)
)
  charset = utf8;

-- auto-generated definition
create table formele
(
  id       int auto_increment
    primary key,
  formname varchar(20) null,
  name     varchar(20) null
)
  charset = utf8;

-- auto-generated definition
create table media
(
  id          int auto_increment
    primary key,
  name        varchar(45) null,
  type        varchar(45) null,
  path        blob        null,
  category_id int         null
);

-- auto-generated definition
create table question
(
  id       int auto_increment
    primary key,
  username varchar(255) not null,
  old      varchar(255) not null,
  selects  varchar(255) not null,
  sex      varchar(255) not null,
  page     varchar(255) not null,
  comments varchar(255) not null
)
  charset = utf8;

-- auto-generated definition
create table user
(
  id       int auto_increment
    primary key,
  username varchar(40) not null,
  password varchar(80) not null,
  sex      varchar(10) null,
  role     varchar(30) null,
  constraint user_id_uindex
  unique (id)
)
  charset = utf8;