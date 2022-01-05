## 1. 
    command: select country, count(event) from summer 
Group by country
Having COUNT(event) > 100
order by COUNT(event) desc

## 2.
    command: 
    SELECT DISTINCT Athlete 
    FROM summer 
    WHERE Country = "CAN"
    GROUP BY Athlete 
    HAVING COUNT(DISTINCT medal) = 3

## 3. 
    command: 
    option1: 
    WITH all_athletes AS 
    (SELECT * FROM summer UNION SELECT * FROM winter) 
    SELECT athlete, country, count(medal) 
    as cnt_medal, group_concat(distinct event) 
    FROM all_athletes 
    GROUP BY athlete, country 
    ORDER BY cnt_medal 
    DESC LIMIT 10

    option2: 
    Select athlete,sport,country, count(medal) as medals
    from summer
    group by athlete , sport , country
    order by medals desc
    limit 10

## 4. 
        command : select group_concat(distinct sport) , group_concat(distinct event) ,athlete, count(medal) as medals , group_concat(distinct country) from summer  
        where year = 2012
        group by athlete
        order by medals desc
        limit 20

## 5.
    command: 
    WITH total AS
    (SELECT DISTINCT s.country, d.population 
    FROM summer s JOIN dictionary d 
    ON (s.country = d.code)
    WHERE s.medal = "Gold"
    AND s.discipline = "Boxing"
    AND s.year=2012
    union 
    SELECT DISTINCT w.country, d.population 
    FROM winter w JOIN dictionary d 
    ON (w.country = d.code)
    WHERE w.medal = "Gold"
    AND w.sport = "skiing"
    AND w.year=2006)
    select * from total




