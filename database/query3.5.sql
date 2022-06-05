select project_name, sf_pair, count(*) as counter from (
select  sf1.project_name, concat (sf1.field_name,"- ", sf2.field_name) sf_pair
from field sf1 
inner join field sf2 on sf1.project_name = sf2.project_name
where sf1.field_name != sf2.field_name and sf1.field_name < sf2.field_name) A 
group by sf_pair
order by counter desc
limit 3;
