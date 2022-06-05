create view researcher_projects as
(select concat( r.Researcher_Last_name," ", r.Researcher_first_name ) as researcher_name, p.Project_name as project_name
from researchers r 
inner join works_for_proj wp on r.researcher_id = wp.id 
inner join projects p on wp.Project_name = p.project_name  )
union all 
(select concat(r.Researcher_Last_name," ", r.Researcher_first_name) as researcher_name, p.Project_name as project_name
from researchers r 
inner join projects p on r.researcher_id = p.directed_from )
order by researcher_name ;

create view organisation_projects as 
select o.Abbreviation as organisation_Abb, p.Project_name as project_name
from organisations o 
inner join projects p on o.Abbreviation = p.organisation_managing
order by organisation_Abb ;