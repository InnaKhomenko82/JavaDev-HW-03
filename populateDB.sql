use hw-3

insert into companies values
(1,'GoIT',1000),
(2,'EPAM',10000),
(3,'DigiCODE',500);

insert into developers values
(1,'Ivan',20,1),
(2,'Petro',25,2),
(3,'Vasyl',30,3);

insert into skills values
(10,'Java','junior'),
(11,'C++','middle'),
(12,'C#','junior'),
(13,'JS','senior');

insert into projects values
(1,'ShedullerBot','2005-05-20'),
(2,'NavigationBot','2006-06-20'),
(3,'TrainingBot','2007-07-20'),
(4,'LectionBot','2008-08-20');

insert into customers values
(1,'NUPP','regular'),
(2,'PDAA','one-time'),
(3,'ChDTU','lost');

insert into companies_projects values
(1,1),(1,2),(3,2),(1,3),(2,3),(2,4);

insert into customers_projects values 
(1,1),(2,1),(1,2),(1,3),(2,3),(3,3),(1,4);

insert into developers_projects values
(3,1),(2,2),(3,2),(1,3),(1,4);

insert into developers_skills values
(1,10),(3,10),(2,11),(3,11),(2,12),(1,13);