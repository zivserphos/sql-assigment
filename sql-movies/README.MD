## 1.

    Command:
    select duration from movies
    where title = "Outback"

    answer: 86+

## 2.

    Command:
    select title from movies
    where year = "2017" and director = "Peter Sullivan"

    answer: "The sand man"


## 3.

    Command:
    SELECT reviews_from_users , reviews_from_critics 
    FROM movies
    WHERE imdb_title_id = "tt7336182"

    answer: 59

## 4.

    Command: 
    select m.title , count(r.votes_1)
    from movies m JOIN ratings r 
    on (m.title = "Joker")

    answer: 448



## 5.

    Command:
    SELECT count(production_company) 
    from movies

    answer: 3146

## 6.

    Command:
    SELECT AVG(duration)
    FROM movies 
    WHERE year <> 2018
    AND (actors 
    LIKE "%Dharmajan Bolgatty%"
    OR actors 
    LIKE "%Sugith Varughes%")

    answer: 136.0769

## 7.

    Command:
    SELECT title, genre, (worlwide_gross_income_in_USD - budget) AS profit 
    FROM movies
    where production_company = "dreamworks" 
    order by profit desc

    answers: 
    - 1917	Drama; War	289857224
    - Qua la zampa 2 - Un amico __ per sempre	Adventure; Comedy; Drama	59790499
    - The Turning - La casa del male	Drama; Horror; Mystery	4596113


## 8.

    Command: 
   SELECT m.title, m.year, r.age_18_to_30_avg_vote 
    FROM movies m 
    JOIN ratings r 
    ON (r.imdb_title_id = m.imdb_title_id)
    WHERE m.actors 
    LIKE '%Lin Shaye%' 
    ORDER BY age_18_to_30_avg_vote ASC

    answer: 
    - Max Reload and the Nether Blasters	2020	4.1


## 9.

    Command:
    WITH 
avg0_18 AS (SELECT AVG(age_0_to_18_avg_vote) as avg, "0_18" as class FROM ratings),
avg18_30 AS (SELECT AVG(age_18_to_30_avg_vote) as avg, "18_30" as class FROM ratings),
avg30_45 AS (SELECT AVG(age_30_to_45_avg_vote) as avg, "30_45" as class FROM ratings),
avg45plus AS (SELECT AVG(age_45_plus_avg_vote) as avg, "45plus" as class FROM ratings),
avgs AS (SELECT * FROM avg0_18 UNION SELECT * FROM avg18_30 UNION SELECT * FROM avg30_45 UNION SELECT * FROM avg45plus )

SELECT MIN(class)  FROM avgs

## 10.

    Command:
   SELECT genre, avg(duration)
    FROM movies 
    GROUP BY genre
    ORDER BY avg(duration) DESC
    LIMIT 3

    Answer:  818.0000,219.0000 , 197.0000


## 5.

    Command:

## 6.

    Command:

