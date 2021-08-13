USE hw-3

INSERT INTO developers VALUES
(1,'Ivan',20,12,1),
(2,'Petro',25,13,2),
(3,'Vasyl',30,10,3);

INSERT INTO skills VALUES
(10,'Java',NULL),
(11,'C++',NULL),
(12,'C#',NULL),
(13,'JS',NULL);

INSERT INTO projects VALUES
(1,'ShedullerBot','2005-05-20'),
(2,'NavigationBot','2006-06-20'),
(3,'TrainingBot','2007-07-20'),
(4,'LectionBot','2008-08-20');

INSERT INTO companies VALUES
(1,'GoIT',1000),
(2,'EPAM',10000),
(3,'DigiCODE',500);

INSERT INTO customers VALUES
(1,'NUPP','regular'),
(2,'PDAA','one-time'),
(3,'ChDTU','lost');

INSERT INTO companies_projects VALUES
(1,1),(1,2),(3,2),(1,3),(2,3),(2,4);

INSERT INTO customers_projects VALUES 
(1,1),(2,1),(1,2),(1,3),(2,3),(3,3),(1,4);

INSERT INTO developers_projects VALUES
(3,1),(2,2),(3,2),(1,3),(1,4);

INSERT INTO developers_skills VALUES
(1,10),(3,10),(2,11),(3,11),(2,12),(1,13);