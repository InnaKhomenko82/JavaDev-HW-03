select p.project_name, min(p.cost) as projectCost, avg(d.salary) as avgSalary
from projects p
inner join developers_projects dp on p.id_project = dp.project_id
inner join developers d on d.id_developer = dp.developer_id
group by p.project_name
order by projectCost
limit 1;