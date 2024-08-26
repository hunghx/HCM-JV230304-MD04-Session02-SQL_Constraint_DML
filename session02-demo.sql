-- Nhóm DML 
-- lấy dữ liệu
-- select * from classes;
select name as `Tên Lớp`, id `Mã lớp`, score from classes;

-- Thêm mới dữ liệu

insert into classes(id, name) value (null,'12A7'),(null,'12A4'); -- thêm 1
insert into classes(name) values ('12A2'),('12A3'); -- thêm nhiều

-- Sửa dữ liệu (khóa chính) 
UPDATE classes set score = 5 where id between 4 and 6;

-- Xóa dữ liệu 
delete from classes where id = 2; 

delete from classes;


-- xóa dữ liệu và reset id tự tăng
truncate table classes;

