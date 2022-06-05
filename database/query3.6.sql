(select r.Researcher_last_name, r.Researcher_first_name, count(*) as projects_working_on 
from Researchers r 
inner join works_for_proj wp on r.researcher_id = wp.id 
inner join projects p on p.project_name=wp.project_name 
where r.age > 40 AND p.Start_date < current_date()  and p.end_date > current_date()
group by r.researcher_last_name)
union 
(select r.researcher_last_name, r.researcher_first_name, count(*) as projects_working_on 
from Researchers r 
inner join projects p on r.researcher_id  = p.directed_from 
where r.age > 40 AND p.Start_date < current_date()  and p.end_date > current_date()
group by r.researcher_last_name ) 
order by projects_working_on desc 
limit 2;