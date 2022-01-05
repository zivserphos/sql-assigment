## 1.
 command: select salary
 from emp
  where emp_id=273407
answer : 110241
## 2.
 command: select first_name , last_name
 from emp
  where city="Palo Alto" and gender ="f"
#### answer : Dawne Gardner
## 3.
 select first_name , last_name ,Years_in_Company
 from emp
  order by Years_in_Company desc
limit 1
#### answer : Otha Orrell 38.39
<!--  -->
select first_name , last_name ,Years_in_Company
 from emp
   where  Years_in_Company >= all( select Years_in_Company from emp )
answer : Otha Orrell 38.39
## 4.
select first_name , last_name , age_in_years ,city ,state
  from emp
   where  First_Name = "Jack"
 ####  answer:
- Jack  Warfel  49.62   El Paso TX
- Jack  Fujita  24.1    Pineville   SC
- Jack  Hackney 28.92   Brooklyn    NY
- Jack  Jacobson    59.37   Rockholds   KY``
## 5.
command: select first_name, last_name,age_in_years,e_mail
 from emp
  where First_Name like "J%" and Age_In_Years >55 and gender="f"
 and E_Mail like "%@gmail%"
#### answer :
- Jesica    Stackpole   59.65   jesica.stackpole@gmail.com
- Jewell    Charon  56.79   jewell.charon@gmail.com
- Jeanette  Huie    59.95   jeanette.huie@gmail.com
- Julee Jain    58.29   julee.jain@gmail.com
- Janet Tindal  55.39   janet.tindal@gmail.com
- Jodi  Hattaway    59.07   jodi.hattaway@gmail.com
- Jada  Dorr    57.81   jada.dorr@gmail.com
- Jacquie   Dillinger   58.1    jacquie.dillinger@gmail.com
- Jerry Ingersoll   55.18   jerry.ingersoll@gmail.com
- Junko Babin   57.09   junko.babin@gmail.com

## 6.

command: 
select first_name, last_name , age_in_years , state
from emp 
where first_name Like "J%" AND age_in_years > 50 and state = "il"

- Julio	Swafford	55.25	IL
- Jarod	Parkes	58.1	IL
- Julio	Thurlow	50.12	IL

## 7. 

command select first_name , last_name  ,city ,state,salary, age_in_years
 from emp
  where age_in_years >50  
and fathers_name Like "%J%" and salary > 100000
and state = "NY"

Cordell	Tweedy	Bronx	NY	184326	54
Moises	Bill	Tyrone	NY	131927	59.7
German	Overbey	Stormville	NY	185583	50.23
Marlon	Encarnacion	Durhamville	NY	195389	53.96

## 8.

command: SELECT First_Name, Last_Name, Gender, Age_in_Years, salary, City, State 
         FROM emp 
         WHERE (Age_in_Years > 50 OR Age_in_Years < 30) 
         AND Last_Name LIKE "B%" 
         AND salary > 80000 AND State = "NY"
         AND gender = "f"

- Bernarda	Bristow	F	50.25	83235	Warrensburg	NY
- Paula	Beverly	F	29.61	160002	Plainville	NY
- Becki	Bissonette	F	50.98	193436	Port Washington	NY
- Meagan	Borkholder	F	26.2	145532	Cassville	NY
- Minh	Bella	F	24.03	143444	New Rochelle	NY
- Gladys	Bouldin	F	55.65	124213	Elizabethtown	NY
- Kristle	Boots	F	23.08	88783	Forestburgh	NY
- Mertie	Buffum	F	55.07	177846	Lake George	NY
- Tena	Belote	F	58.86	143846	Purdys	NY

## 9. 
command: SELECT First_Name, Last_Name, Gender
         FROM emp
         WHERE gender = "f" and first_name = ANY(select first_name from emp where gender ="M")

## 10.

command: select first_name, last_name , gender , salary , age_in_years
         from emp 
         where last_name = ANY(select last_name FROM emp where salary > 70
         000)

## 11. 
   command: select first_name, last_name , gender , salary , age_in_years
            from emp 
            where first_name like "_____" and last_name = ANY(select last_name from emp where years_in_company > 5)

## 12. 
   command: 
   select first_name, last_name , gender , salary , age_in_years,
    case
    when age_in_years < 30 then "young"
    when age_in_years > 50 then "old man"
    else "adult "
    end as "status"
   from emp

## 13.
   command:SELECT first_name,last_name,years_in_company , 
   case
   when years_in_company < 5 then "junior" 

   when (years_in_company > 5 and years_in_company < 15)  then "senior" 

   when years_in_company > 15 
   and name_prefix not in ("Prof.","Drs.","Dr.") then  "super senior"


   when years_in_company > 15 and name_prefix in ("Prof.","Drs.","Dr.") then "Expert"
   end as "pazam"
   from emp
   order by years_in_company

## 14. 
SELECT first_name, last_name FROM emp ORDER BY First_Name ASC, Last_Name ASC


## 15.
   command: select first_name, age_in_years , Weight_in_Kgs
            from emp
            order by Weight_in_Kgs ASC, age_in_years desc







