alter table `hw-3`.`developers` add column `salary` decimal;
update `hw-3`.`developers` set `salary` = 500 where (`id_developer` = 1);
update `hw-3`.`developers` set `salary` = 550 where (`id_developer` = 2);
update `hw-3`.`developers` set `salary` = 600 where (`id_developer` = 3);

/*select p.project_name, sum(d.`salary`) as projectCost
from `hw-3`.`projects` p
inner join `hw-3`.`developers_projects` dp on p.`id_project` = dp.`project_id`
inner join `hw-3`.`developers` d on d.`id_developer` = dp.`developer_id`
group by p.project_name
order by project_cost desc
limit 1;*/

/*select s.skills_field, sum(d.salary) as totalSalary
from `hw-3`.`developers` d
inner join `hw-3`.`developers_skills` ds on d.`id_developer` = ds.`developer_id`
inner join `hw-3`.`skills` s on s.`id_skill` = ds.`skill_id`
where s.skills_field = 'Java';*/

alter table `hw-3`.`projects` add column `cost` decimal;
update `hw-3`.`projects` set `cost` = 10000 where (`id_project` = 1);
update `hw-3`.`projects` set `cost` = 20000 where (`id_project` = 2);
update `hw-3`.`projects` set `cost` = 25000 where (`id_project` = 3);
update `hw-3`.`projects` set `cost` = 30000 where (`id_project` = 4);

/*select p.project_name, min(p.`cost`) as minProjectCost
from `hw-3`.`projects` p
group by p.project_name
order by minProjectCost
limit 1;*/
