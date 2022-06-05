select * from (
(select r.Researcher_last_name, r.Researcher_first_name, count(*) as works_on
from researchers r 
inner join works_for_proj wp on r.researcher_id = wp.id 
inner join projects p on wp.project_name = p.project_name 
left join deliverable d on p.project_name = d.pr_name 
where d.pr_name is null 
group by r.researcher_last_name)
union
(select r.researcher_last_name, r.researcher_first_name, count(*) as works_on 
from researchers r 
inner join projects p on r.researcher_id  = p.directed_from
left join deliverable d on p.project_name = d.pr_name 
where d.pr_name is null 
group by r.researcher_last_name ) 
order by works_on desc) A
where works_on >= 5;