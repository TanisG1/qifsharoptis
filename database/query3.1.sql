select program_name from financing_programs;

select p.project_name as title                                                                                  
from projects p 
inner join manage m on m.project_name=p.project_name
inner join executives e on m.id = e.executive_id 
where e.executive_id=? and p.duration=? and ((p.start_date < current_date())  and (p.end_date > current_date()));

select researcher_name from (
(select concat(r.researcher_last_name," ", r.researcher_first_name) as researcher_name, p.project_name 
from researchers r 
inner join works_for_proj wp on r.researcher_id = wp.id 
inner join projects p on wp.project_name = p.project_name
order by researcher_name)
union 
(select concat(r.researcher_last_name," ", r.researcher_first_name) as researcher_name, p.project_name 
from researchers r 
inner join projects p on r.researcher_id = p.directed_from
order by researcher_name)) A
where A.project_name = '%';