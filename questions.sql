-- Select all columns and rows from the movies table
SELECT * FROM movies

-- Select only the title and id of the first 10 rows
SELECT title id FROM movies LIMIT 10

-- Find the movie with the id of 485
SELECT title FROM movies WHERE id=485

-- Find the id (only that column) of the movie Made in America (1993)
SELECT id FROM movies WHERE title LIKE '%made in america%'

-- Find the first 10 sorted alphabetically
SELECT * FROM movies ORDER BY title ASC LIMIT 10

-- Find all movies from 2002
SELECT * FROM movies WHERE title LIKE '%2002%'

-- Find out what year the Godfather came out
SELECT SUBSTRING(title, -5, 4) FROM movies WHERE title LIKE '%godfather, the%'

-- Without using joins find all the comedies
SELECT * FROM movies WHERE genres LIKE 'comedy'

-- Find all comedies in the year 2000
SELECT * FROM movies WHERE genres LIKE 'comedy' && title LIKE '%2002%'

-- Find any movies that are about death and are a comedy
SELECT * FROM movies WHERE genres LIKE 'comedy' && title LIKE '%death%'

-- Find any movies from either 2001 or 2002 with a title containing super
SELECT * FROM movies WHERE ((SUBSTRING(title, -5, 4) = 2001) || (SUBSTRING(title, -5, 4) = 2002)) && title LIKE '%super%'

-- Create a new table called actors (We are going to pretend the actor can only play in one movie). The table should include name, character name, foreign key to movies and date of birth at least plus an id field.
CREATE TABLE actors (
id int,
)

-- Pick 3 movies and create insert statements for 10 actors each. You should use the multi value insert statements


-- Create a new column in the movie table to hold the MPAA rating. UPDATE 5 different movies to their correct rating
UPDATE movies SET rating = "G" WHERE id = 1 || id = 2 || id = 3 || id = 4 || id = 5

-- With Joins --
-- Find all the ratings for the movie Godfather, show just the title and the rating
SELECT 
 movies.title,
 ratings.rating
FROM
 movies
LEFT JOIN ratings on movies.id = ratings.movie_id
WHERE movies.title LIKE "%godfather, the%"

-- Order the previous objective by newest to oldest
SELECT 
 movies.title,
 ratings.rating,
 ratings.timestamp
FROM
 movies
LEFT JOIN ratings on movies.id = ratings.movie_id
WHERE movies.title LIKE "%godfather, the%"
ORDER BY timestamp DESC

-- Find the comedies from 2005 and get the title and imdbid from the links table


-- Find all movies that have no ratings


-- Complete the following aggregation objectives --
-- Get the average rating for a movie


-- Get the total ratings for a movie


-- Get the total movies for a genre


-- Get the average rating for a user


-- Find the user with the most ratings


-- Find the user with the highest average rating


-- Find the user with the highest average rating with more than 50 reviews


-- Find the movies with an average rating over 4

