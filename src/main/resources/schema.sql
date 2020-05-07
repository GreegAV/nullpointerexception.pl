create table post(
    id bigint auto_increment primary key,
    title varchar(400) not null,
    content varchar(2000) null,
    created timestamp
);

create table comment (
    id bigint auto_increment primary key,
    post_id bigint not null ,
    content varchar(2000) null,
    created timestamp
);

alter table  comment
add constraint  comment_post_id
foreign key (post_id) references post(id)