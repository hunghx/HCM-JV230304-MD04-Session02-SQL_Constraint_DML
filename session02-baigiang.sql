

-- Tạo CSDL
create database session02;
use session02;
-- Bài toán quản lí sinh viên
-- drop table student;
create table Classes(
        id int auto_increment primary key,
        name varchar(10) unique not null
);
alter table classes 
add column score double ;


create table Student(
        id bigint auto_increment,
        name varchar(50) not null,
        phone varchar(15) not null unique ,
        age int check(age between 18 and 25), -- kết hợp vs hàm tính độ dài chuỗi LENGTH(), hàm nối chuỗi CONCAT()
        class_id int not null,
        -- description text default 'khong co gi đe noi',
        sex bit default(1), -- 1 là nam
         -- định nghĩa khóa ngoại
        constraint fk_01 foreign key(class_id) references classes(id),
        primary key(id)  -- composite key
);

alter table student
add constraint fk_02 foreign key(class_id) references classes(id);


alter table student
add constraint chk_01 check(age > 15);



ALter table student
drop constraint fk_01;


















