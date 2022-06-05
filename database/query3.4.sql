create view org_year_projects as
select Abbreviation, extract( year from Start_Date) as year2, count(*) as got_projects from (
select o.Abbreviation, p.project_Name , p.Start_Date
from organisations o 
inner join projects p on p.organisation_managing = o.Abbreviation ) A
group by  year2, Abbreviation ;

select Abbreviation, a_year, next_year, a_got_projects as number_of_projects  from (
select a.Abbreviation, a.year2 as a_year, a.got_projects as a_got_projects, b.year2 as next_year, b.got_projects as year2_got_projects 
from org_year_projects a
inner join org_year_projects b on a.Abbreviation = b.Abbreviation
where a.year2 != b.year2 and a.year2 < b.year2) A 
where (next_year - a_year = 1) and a_got_projects = year2_got_projects and a_got_projects >= 10; 
