(select p.Project_name, r.Researcher_last_name, r.Researcher_first_name  
from Researchers r 
inner join Works_for_Proj wp on r.researcher_id = wp.ID 
inner join Projects p on wp.Project_name = p.project_name
inner join field sf on p.project_name = sf.project_name
where (sf.Field_name = 'Human Resources')
and ((p.start_date < current_date())  and (p.end_date > current_date())))
union 
(select p.Project_name, r.Researcher_last_name, r.Researcher_first_name  
from Researchers r 
inner join Projects p on r.researcher_id = p.directed_from 
inner join field sf on p.project_name = sf.Field_name 
where (sf.field_name = 'Human Resources')
and ((p.start_date < current_date())  and (p.end_date > current_date())));

