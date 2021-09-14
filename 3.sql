select s.skills_field, sum(d.salary) as totalSalary
from developers d
inner join developers_skills ds on d.id_developer = ds.developer_id
inner join skills s on s.id_skill = ds.skill_id
where s.skills_field = 'Java';