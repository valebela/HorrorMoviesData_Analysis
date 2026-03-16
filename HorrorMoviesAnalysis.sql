---------------------------------------------------------------
-- Horror Movies Analysis
-- Dataset: IMDb Horror Movies
-- Columns: Movie_Title, Movie_Year, Runtime, Genre, Rating, Director, Votes, Gross
---------------------------------------------------------------
--Database
USE HorrorMovieProject;
GO

-- 1. Explore dataset: first 10 rows
SELECT TOP 10 *
FROM HorrorMoviesData;

-- 2. Top 10 highest rated horror movies
-- Insight: Shows which movies are critically best-received

SELECT TOP 10 [Movie_Title] AS Title, [Rating] AS MovieRating
FROM HorrorMoviesData
ORDER BY [Rating] DESC;

-- 3. Most popular horror movies by votes
-- Insight: Shows audience favorites based on votes

SELECT TOP 10 [Movie_Title] AS Title, [Votes] AS TotalVotes
FROM HorrorMoviesData
ORDER BY [Votes] DESC;

-- 4. Directors with the most horror movies
-- Insight: Identifies prolific directors
SELECT [Director], COUNT(*) AS MoviesMade
FROM HorrorMoviesData
GROUP BY [Director]
ORDER BY MoviesMade DESC;
 
-- 5. Average rating by year
-- Insight: Shows trends in movie quality over time

SELECT [Movie_Year], AVG([Rating]) AS AvgRating
FROM HorrorMoviesData
GROUP BY [Movie_Year]
ORDER BY [Movie_Year];

-- 6. Top 5 longest horror movies
-- Insight: Which movies are epic-length

SELECT TOP 5 [Movie_Title] AS Title, [Runtime] AS Minutes
FROM HorrorMoviesData
ORDER BY [Runtime] DESC;


-- 7. Top 5 highest grossing horror movies
-- Insight: Shows commercial success

 

-- 8. Average runtime by genre
-- Insight: Shows which horror genres tend to be longer

SELECT [Genre], AVG([Runtime]) AS AvgRuntime
FROM HorrorMoviesData
GROUP BY [Genre]
ORDER BY AvgRuntime DESC;


-- 9. Average rating by director
-- Insight: Highlights directors with consistently high-rated movies

SELECT [Director], AVG([Rating]) AS AvgRating
FROM HorrorMoviesData
GROUP BY [Director]
ORDER BY AvgRating DESC;


-- 10. Movies per year
-- Insight: Shows production trends over time

SELECT [Movie_Year], COUNT(*) AS MoviesReleased
FROM HorrorMoviesData
GROUP BY [Movie_Year]
ORDER BY [Movie_Year];