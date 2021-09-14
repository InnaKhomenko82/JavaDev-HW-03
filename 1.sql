use hw-3;
alter table developers add column salary decimal;
update developers set salary = 500 where (id_developer = 1);
update developers set salary = 550 where (id_developer = 2);
update developers set salary = 600 where (id_developer = 3);