use hw-3;
alter table projects add column cost decimal;
update projects set cost = 10000 where (id_project = 1);
update projects set cost = 20000 where (id_project = 2);
update projects set cost = 25000 where (id_project = 3);
update projects set cost = 30000 where (id_project = 4);
