from flask import Blueprint, render_template, flash, request, redirect, url_for
from werkzeug.security import generate_password_hash, check_password_hash
from .models import User
from . import db 
from flask_login import login_user, login_required, logout_user, current_user
import mysql.connector



auth = Blueprint('auth', __name__) 

@auth.route('/database', methods=['GET', 'POST'])
def database():
    return render_template("database.html")

@auth.route('/login', methods=['GET', 'POST'])
def login():
    return render_template("login.html")

@auth.route('/logout')
def logout():
    logout_user()
    return  redirect(url_for('auth.login'))   

@auth.route('/sign-up', methods=['GET', 'POST'])
def sign_up():
    if request.method == 'POST':
        email = request.form.get('email')
        first_name = request.form.get('firstName')
        password1 = request.form.get('password1')
        password2 = request.form.get('password2')

        user = User.query.filter_by(email=email).first()
        if user:
            flash('Email already exists.', category='error')
        elif len(email) < 4:
            flash('Email must be greater than 3 characters.', category='error')
        elif len(first_name) < 2:
            flash('First name must be greater than 1 character.', category='error')
        elif password1 != password2:
            flash('Passwords don\'t match.', category='error')
        elif len(password1) < 7:
            flash('Password must be at least 7 characters.', category='error')
        else:
            new_user = User(email=email, first_name=first_name, password=generate_password_hash(
                password1, method='sha256'))
            db.session.add(new_user)
            db.session.commit()
            login_user(user, remember=True)
            flash('Account created!', category='success')
            return redirect(url_for('views.home'))

    return render_template("sign_up.html", user=current_user)

ourdb = mysql.connector.connect(host="localhost", user="root", database="elidek")
cursor = ourdb.cursor()


@auth.route('/researcher')
def researcher():
    
    return render_template("researcher.html",  boolean=True)



@auth.route('/project')
def project():

    return render_template("project.html",  boolean=True)





# for 3.2
@auth.route('/project/researcher_projects')
def researcher_projects():
    cursor.execute('''create view researcher_projects_oh as
                    (select concat( r.Researcher_Last_name," ", r.Researcher_first_name ) as researcher_name, p.Project_name as project_name
                    from researchers r 
                    inner join works_for_proj wp on r.researcher_id = wp.id 
                    inner join projects p on wp.Project_name = p.project_name  )
                    union all 
                    (select concat(r.Researcher_Last_name," ", r.Researcher_first_name) as researcher_name, p.Project_name as project_name
                    from researchers r 
                    inner join projects p on r.researcher_id = p.directed_from )
                    order by researcher_name ;''')
    cursor.execute('select * from researcher_projects;')
    result4 = cursor.fetchall()
    listed4 = list(result4)
    cursor.execute('drop view researcher_projects_oh;')
    return render_template("researcher_projects.html", result4=listed4, rows=len(result4), columns=len(result4[0]), boolean=True)

@auth.route('/project/organisation_projects')
def organisation_projects():
    cursor.execute('''create view organisation_projects_oh as 
                        select o.Abbreviation as organisation_Abb, p.Project_name as project_name
                        from organisations o 
                        inner join projects p on o.Abbreviation = p.organisation_managing
                        order by organisation_Abb ;''')
    cursor.execute('select * from organisation_projects;')
    result5 = cursor.fetchall()
    listed5 = list(result5)
    cursor.execute('drop view organisation_projects_oh;')
    return render_template("organisation_projects.html", result5=listed5, rows=len(result5), columns=len(result5[0]), boolean=True)

# for 3.3
@auth.route('/scientific_field', methods=['GET', 'POST'])
def scientific_field():

    lost = cursor.execute(f'SELECT * FROM field')
    fields = cursor.fetchall()
    if request.method == 'POST':
        choice = request.form["resfield"]
        if choice:
            cursor.execute(f'''(select p.Project_name, r.Researcher_last_name, r.Researcher_first_name  
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
                                and ((p.start_date < current_date())  and (p.end_date > current_date())));''')
            results = cursor.fetchall()
            return render_template("scientific_field.html", fields=fields, choice=choice, results=results, rows=len(results), columns=len(results[0]), boolean=True)
    else:
        return render_template("scientific_field.html", fields=fields)

# for 3.4 
@auth.route('/organisation')
def organisation():
    cursor.execute('''create view org_cons_year_projects as
                        select Abbreviation, extract( year from Start_Date) as year2, count(*) as got_projects from (
                        select o.Abbreviation, p.project_Name , p.Start_Date
                        from organisations o 
                        inner join projects p on p.organisation_managing = o.Abbreviation ) A
                        group by  year2, Abbreviation ;''')
    cursor.execute('''select Abbreviation, a_year, next_year, a_got_projects as number_of_projects  from (
                        select a.Abbreviation, a.year2 as a_year, a.got_projects as a_got_projects, b.year2 as next_year, b.got_projects as year2_got_projects 
                        from org_year_projects a
                        inner join org_year_projects b on a.Abbreviation = b.Abbreviation
                        where a.year2 != b.year2 and a.year2 < b.year2) A 
                        where (next_year - a_year = 1) and a_got_projects = year2_got_projects and a_got_projects >= 10; ''')
    result2 = cursor.fetchall()
    listed2 = list(result2)
    cursor.execute('drop view org_cons_year_projects;')
    return render_template("organisation.html", result2=listed2, rows=len(result2), columns=len(result2[0]), boolean=True)

# for 3.5
@auth.route('/Project/best_3_scientific_field_duos')
def best_3_scientific_field_duos():
    cursor.execute('''create view sf_pj as
                        select p.title, p.project_id, prf.name  
                        from Project p 
                        inner join Project_Research_Field prf on p.project_id = prf.project_id 
                        order by p.project_id ;''')
    cursor.execute('''select project_name, sf_pair, count(*) as counter from (
                    select  sf1.project_name, concat (sf1.field_name,"- ", sf2.field_name) sf_pair
                    from field sf1 
                    inner join field sf2 on sf1.project_name = sf2.project_name
                    where sf1.field_name != sf2.field_name and sf1.field_name < sf2.field_name) A 
                    group by sf_pair
                    order by counter desc
                    limit 3;''')
    cursor.execute('select * scientific_field;')
    result7 = cursor.fetchall()
    listed7 = list(result7)
    cursor.execute('drop view sf_pj;')
    return render_template("best_3_scientific_field_duos.html", result7=listed7, rows=len(result7), columns=len(result7[0]), boolean=True)


# for 3.6
@auth.route('/researcher/researchers_under_40_yo')
def Researchers_under_40_yo():
    
    cursor.execute('''(select r.Researcher_last_name, r.Researcher_first_name, count(*) as projects_working_on 
                    from Researchers r 
                    inner join works_for_proj wp on r.researcher_id = wp.id 
                    inner join projects p on p.project_name=wp.project_name 
                    where r.age > 40 AND p.Start_date < current_date()  and p.end_date > current_date()
                    group by r.researcher_last_name) union 
                     (select r.researcher_last_name, r.researcher_first_name, count(*) as projects_working_on 
                    from Researchers r 
                    inner join projects p on r.researcher_id  = p.directed_from 
                    where r.age > 40 AND p.Start_date < current_date()  and p.end_date > current_date()
                    group by r.researcher_last_name ) 
                    order by projects_working_on desc 
                    limit 2;''')
    result = cursor.fetchall()

    listed = list(result)
    return render_template("researchers_under_40_yo.html", result=listed, rows=len(result), columns=len(result[0]), boolean=True)


# for 3.7
@auth.route('/executives')
def executives():
    cursor.execute('''SELECT SUM(P.Amount), C.name, E.executive_id
                        FROM Executives E
                        INNER JOIN manage m on E.Executive_id=m.id
                        INNER JOIN Projects  p ON m.project_name = p.project_name
                        INNER JOIN Organisations o
                        ON O.Abbreviation = P.Organisation_managing
                        INNER JOIN Company C
                        ON C.Name = O.Abbreviation
                        GROUP BY C.name, E.Executive_id
                        ORDER BY SUM(P.Amount) DESC
                        LIMIT 5;''')
   
    result1 = cursor.fetchall()
    listed1 = list(result1)
    cursor.execute('drop view projects_of_companies;')
    return render_template("executive.html", result1=listed1, rows=len(result1), columns=len(result1[0]), boolean=True)


# for 3.8
@auth.route('/researcher/researchers_working_on_5_pj')
def researchers_working_on_5_pj():
    cursor.execute('''select * from (
                        (select r.Researcher_last_name, r.Researcher_first_name, count(*) as works_on
                        from researchers r 
                        inner join works_for_proj wp on r.researcher_id = wp.id 
                        inner join projects p on wp.project_name = p.project_name 
                        left join deliverable d on p.project_name = d.pr_name 
                        where d.pr_name is null 
                        group by r.researcher_last_name) union
                        (select r.researcher_last_name, r.researcher_first_name, count(*) as works_on 
                        from researchers r 
                        inner join projects p on r.researcher_id  = p.directed_from
                        left join deliverable d on p.project_name = d.pr_name 
                        where d.pr_name is null 
                        group by r.researcher_last_name ) 
                        order by works_on desc) A
                        where works_on >= 5;''')
    result6 = cursor.fetchall()
    listed6 = list(result6)
    return render_template("researchers_working_on_5_pj.html", result6=listed6, rows=len(result6), columns=len(result6[0]), boolean=True)

@auth.route('/Programm')
def Researcher():
    found = cursor.execute('SELECT * FROM executive')
    researchers = cursor.fetchall()
    hhm = cursor.execute('SELECT * FROM  field')
    fields = cursor.fetchall()
    return render_template("Programm.html", researchers=researchers, fields=fields)







