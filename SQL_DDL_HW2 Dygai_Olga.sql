--Таблица employees
--Создать таблицу employees
--id. serial,  primary key,
--employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees(
  id serial primary key,
  employee_name varchar(50) not null
);

insert into employees(employee_name)
values ('Torrey Weissnat'),
    ('Vena Schamberger'),
    ('Julian Lynch'),
    ('Percy Von'),
    ('Brenna Hickle'),
    ('Kaley Weber'),
    ('Bella Goldner'),
    ('Rose Willms'),
    ('Paula Volkman'),
    ('Viola Goldner'),
    ('Opal Steuber'),
    ('Davon Batz'),
    ('Betty Kreiger'),
    ('Arnold Torphy'),
    ('Chyna Hilll'),
    ('Julian Leuschke'),
    ('Clinton Ryan'),
    ('Omer Hand'),
    ('Gideon Bayer'),
    ('Haley Miller'),
    ('Cristal Auer'),
    ('Adell Hamill'),
    ('Alisa Fahey'),
    ('Davon Parisian'),
    ('Savanna Rowe'),
    ('Kiana Crooks'),
    ('Pansy Torp'),
    ('Lina Grimes'),
    ('Bella Mante'),
    ('Tiffany Braun'),
    ('Simone Lindgren'),
    ('Brant Thompson'),
    ('Gloria Fay'),
    ('Toby Morissette'),
    ('Kiana Wolf'),
    ('Rocky Weber'),
    ('Gwen Roob'),
    ('Tre Becker'),
    ('Marielle Howe'),
    ('Rowena Mertz'),
    ('Alanis Bauch'),
    ('Lee Swift'),
    ('Lee Swift'),
    ('Neil Hansen'),
    ('Rosie Raynor'),
    ('Cecil Marks'),
    ('Sister Schimmel'),
    ('Erica Hayes'),
    ('Zola Nader'),
    ('Otha Kirlin'),
    ('Connor Luettgen'),
    ('Rosie Tillman'),
    ('Efren Steuber'),
    ('Millie Ward'),
    ('Cielo Spinka'),
    ('Sheldon Beahan'),
    ('Tomasa Fritsch'),
    ('Amara Howe'),
    ('Kole Langosh'),
    ('Audrey Fahey'),
    ('Alisa Watsica'),
    ('Murl Rolfson'),
    ('August Feil'),
    ('Denis Grady'),
    ('Jaren Collins'),
    ('Ciara Murphy'),
    ('Elisha Koelpin'),
    ('Tierra Hessel'),
    ('Alisa Kovacek'),
    ('Vernie Stehr');
   
--Таблица salary
--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
-- Наполнить таблицу salary 15 строками:
    
create table salary(
  id serial primary key,
  monthly_salary int not null
);

insert into salary(monthly_salary)
values (1000),
     (1100),
     (1200),
     (1300),
     (1400),
     (1500),
     (1600),
     (1700),
     (1800),
     (1900),
     (2000),
     (2100),
     (2200),
     (2300),
     (2400);
    
--Таблица employee_salary
--Создать таблицу employee_salary
--id. Serial  primary key,
--employee_id. Int, not null, unique
--salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--в 10 строк из 40 вставить несуществующие employee_id   
     
 create table employee_salary(
  id serial primary key,
  employee_id int unique not null,
  salary_id int not null
);
  
insert into employee_salary(id, employee_id, salary_id)
values (default, 5, 2),
     (default, 2, 1),
     (default, 7, 4),
     (default, 11, 8),
     (default, 78, 1),
     (default, 55, 2),
     (default, 28, 15),
     (default, 100, 9),
     (default, 45, 3),
     (default, 32, 12),
     (default, 1, 49),
     (default, 56, 9),
     (default, 27, 15),
     (default, 87, 14),
     (default, 63, 5),
     (default, 111, 4),
     (default, 26, 7),
     (default, 14, 3),
     (default, 19, 7),
     (default, 35, 7),
     (default, 21, 8),
     (default, 41, 8),
     (default, 71, 12),
     (default, 29, 6),
     (default, 66, 6),
     (default, 70, 1),
     (default, 72, 7),
     (default, 44, 2),
     (default, 22, 12),
     (default, 110, 4),
     (default, 69, 3),
     (default, 62, 11),
     (default, 99, 1),
     (default, 3, 3),
     (default, 33, 8),
     (default, 191, 1),
     (default, 67, 8),
     (default, 50, 11),
     (default, 73, 1),
     (default, 39, 13);
     
--Таблица roles
--Создать таблицу roles
--id. Serial  primary key,
--role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:
    
 create table roles(
 	id serial primary key,
 	role_name int unique not null 
 );
 
alter table roles
alter column role_name type varchar(30);

-- с varchar на int
--alter table roles
--alter column role_name type int using role_name :: integer;

insert into roles (role_name)
values ('Junior Python Developer'),
	   ('Middle Python Developer'),
	   ('Senior Python Developer'),
	   ('Junior Java Developer'),
	   ('Middle Java Developer'),
	   ('Senior Java Developer'),
	   ('Junior JavaScript Developer'),
	   ('Middle JavaScript Developer'),
	   ('Senior JavaScript Developer'),
	   ('Junior Manual QA Engineer'),
	   ('Middle Manual QA Engineer'),
	   ('Senior Manual QA Engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales Manager'),
	   ('Junior Automation QA Engineer'),
	   ('Middle Automation QA Engineer'),
	   ('Senior Automation QA Engineer');
	  
--Таблица roles_employee
--Создать таблицу roles_employee
--id. Serial  primary key,
--employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:
 	  
create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),	
	foreign key (role_id)
		references roles (id)
);

insert into roles_employee(employee_id, role_id)
	values (1,2),
		    (21,5),
		    (55,16),
		    (11,20),
		    (16,4),
		    (43,10),
		    (44,15),
		    (64,11),
		    (23,13),
		    (33,19),
		    (34,12),
		    (38,6),
		    (12,14),
		    (3,7),
		    (4,8),
		    (51,3),
		    (70,18),
		    (35,1),
		    (59,9),
		    (60,17);
		   
	
