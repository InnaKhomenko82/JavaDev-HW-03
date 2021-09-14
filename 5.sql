select p.project_name, min(p.cost) as projectCost
from projects p
group by p.project_name
order by projectCost
limit 1;