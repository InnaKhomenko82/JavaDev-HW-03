select p.project_name, sum(d.salary) as project_cost
from projects p
inner join developers_projects dp on p.id_project = dp.project_id
inner join developers d on d.id_developer = dp.developer_id
group by p.project_name
order by project_cost desc
limit 1;