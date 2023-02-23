USE sakila;

#1. Get film ratings
SELECT title, rating
FROM film;

# OR depending on how you read the question

SELECT DISTINCT(rating) AS ratings
FROM film;

# 2. Get release years
SELECT title, release_year
FROM film;

# OR depending on how you read the question

SELECT DISTINCT(release_year) AS release_years
FROM film;

# 3. Get all films with ARMAGEDDON in the title
SELECT title
FROM film;

SELECT film_id, title
FROM film
WHERE title REGEXP "ARMAGEDDON*";

# 4. Get all films with APOLLO in the title
SELECT title
FROM film;

SELECT film_id, title
FROM film
WHERE title REGEXP "APOLLO*";

# 5. Get all films which title ends with APOLLO
SELECT title
FROM film;

SELECT film_id, title
FROM film
WHERE title regexp "APOLLO$";

# 6. Get all films with word DATE in the title
SELECT title
FROM film;

SELECT film_id, title
FROM film
WHERE title REGEXP "DATE*";

# 7. Get 10 films with the longest title ###??????
SELECT (LENGTH(title)) AS characters_in_title, title    # SELECT MAX(LENGTH(title)) AS characters_in_title, title # FROM film;
FROM film
ORDER BY length DESC
LIMIT 10;

# 8. Get 10 the longest films
SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

# 9. How many films include Behind the Scenes content?
SELECT * 
FROM film
WHERE special_features regexp "behind the scenes";

# 10. List films ordered by release year and title in alphabetical order
SELECT *
FROM film
ORDER BY 
	release_year ASC, 
    title ASC;





# SQL Basics question 5 answer is wrong
