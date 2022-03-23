--1. Создать таблицу employees
	-- id. Serial,  primary key,
	-- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
);



--2. Наполнить таблицу employee 70 строками

insert into employees(employee_name)
values ('Julia Mergen'),
	   ('Lawrence Hansen'),
	   ('Emma Johnson'),
	   ('John Hunter'),
	   ('Michelle Stewart'),
	   ('Karen Taylor'),
	   ('Michael Taylor'),
	   ('Donna Sanchez'),
	   ('Todd Jackson'),
	   ('Erik Elliott'),
	   ('Dorothy Dixon'),
	   ('Robert Matthews'),
	   ('Loretta Fox'),
	   ('Margaret Dawson'),
	   ('Loretta Fox'),
	   ('Margaret Dawson'),
	   ('Carlos Young'),
	   ('Gladys Evans'),
	   ('Elizabeth Rodriquez'),
	   ('Michael Martin'),
	   ('Laurie Adams'),
	   ('Lawrence Hansen'),
	   ('Eric Sparks'),
	   ('Kristina Garcia'),
	   ('David Quinn'),
	   ('Peter Henderson'),
	   ('Raymond Brown'),
	   ('Irene Benson'),
	   ('Jennie Crawford'),
	   ('Michael Rodgers'),
	   ('Julia Romero'),
	   ('Donna Torres'),
	   ('Jeff Walsh'),
	   ('Brandy Johnson'),
	   ('Joseph Delgado'),
	   ('Ralph Williamson'),
	   ('Cindy Lane'),
	   ('David Miller'),
	   ('Eric Hernandez'),
	   ('Martha Logan'),
	   ('Betty Hernandez'),
	   ('William Gomez'),
	   ('John Kim'),
	   ('Nora White'),
	   ('Emma Marshall'),
	   ('Amanda Brown'),
	   ('Thomas Ellis'),
	   ('Darlene Joseph'),
	   ('Carlos West'),
	   ('Susan Simpson'),
	   ('Mary Kennedy'),
	   ('Robert Lee'),
	   ('Paul Cox'),
	   ('Russell Morton'),
	   ('Jesse Torres'),
	   ('George Cain'),
	   ('William Smith'),
	   ('Frank Jackson'),
	   ('Ryan Hardy'),
	   ('Jeffrey Silva'),
	   ('Ruben Stevens'),
	   ('Georgia Johnson'),
	   ('David Stone'),
	   ('Lillian Johnson'),
	   ('James Jones'),
	   ('Valerie Stone'),
	   ('Shane Morris'),
	   ('Kathleen Miller'),
	   ('James Brown'),
	   ('Maria Henry');
	  
select * from employees;


	 
--3. Создать таблицу salary
	-- id. serial,  primary key,
	-- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);



--4. Наполнить таблицу employee 15 строками

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
	   		  
select * from salary;	  



--5. Создать таблицу employee_salary
	-- id. Serial,  primary key,
	-- employee_id. Int, not null, unique
	-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);



--6. Наполнить таблицу employee_salary 40 строками. В 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values (77, 7),
	   (81, 4),
	   (82, 9),
	   (83, 13),
	   (84, 4),
	   (185, 2),
	   (86, 10),
	   (87, 13),
	   (88, 4),
	   (89, 1),	   
	   (10, 11),	   
	   (11, 15),		   
	   (12, 8),		   
	   (13, 9),	   
	   (14, 2),		   
	   (15, 1),
	   (16, 3),	   
	   (17, 4),		   
	   (18, 2),	   
	   (19, 10),	   
	   (20, 11),	   
	   (21, 3),		   
	   (22, 6),		   
	   (23, 5),	   
	   (24, 9),		   
	   (25, 13),
	   (26, 8),	   
	   (27, 11),		   
	   (28, 9),	   
	   (29, 10),	  	   
	   (30, 11),	   
	   (31, 3),		   
	   (32, 4),		   
	   (33, 5),	   
	   (34, 7),		   
	   (35, 8),
	   (36, 12),	   
	   (37, 2),		   
	   (38, 15),	   
	   (39, 1);
	
select * from employee_salary;
	   
	   

--7. Создать таблицу roles
	-- id. Serial,  primary key,
	-- role_name. Int, not null, unique


create table roles(
	id serial primary key,
	role_name int not null unique
);



--8. Поменять тип столба role_name с int на varchar(30)

alter table roles alter column role_name type Varchar(30) using role_name::varchar (30);



--9. Наполнить таблицу roles 20 строками

insert into roles(role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),      
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),       
       ('Designer'),
       ('HR'),
       ('CEO'),       
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),      
       ('Senior Automation QA engineer');
         
select * from roles;      
       
       
       
--10. Создать таблицу roles_employee         
	-- id. Serial,  primary key,
	-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
	-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
	       
create table roles_employee(
	id serial primary key, 
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id) references employees(id),
	foreign key (role_id) references roles(id)
);

 

--11. Наполнить таблицу roles_employee 40 строками

insert into roles_employee(employee_id, role_id)
values (1, 2),
	   (2, 4),
	   (3, 9),
	   (4, 13),
	   (5, 4),
	   (6, 2),
	   (7, 9),
	   (8, 13),
	   (51, 3),
	   (10, 4),	   
	   (11, 7),	   
	   (19, 20),		   
	   (12, 7),		   
	   (13, 19),	   
	   (14, 10),		   
	   (15, 11),
	   (16, 12),	   
	   (17, 13),		   
	   (18, 14),	   
	   (9, 15),	   
	   (20, 17),	   
	   (21, 8),		   
	   (22, 19),		   
	   (23, 20),	   
	   (24, 1),		   
	   (25, 2),
	   (26, 3),	   
	   (50, 14),		   
	   (28, 20),	   
	   (29, 13),	  	   
	   (30, 8),	   
	   (31, 9),		   
	   (32, 6),		   
	   (33, 5),	   
	   (34, 9),		   
	   (35, 13),
	   (36, 12),	   
	   (69, 2),		   
	   (38, 15),	   
	   (39, 1);
	  
select * from roles_employee;   	  

