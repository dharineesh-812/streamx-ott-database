SELECT m.movie_id, m.title, COUNT(w.history_id) AS watch_count
FROM Movies m
JOIN WatchHistory w ON m.movie_id = w.movie_id
WHERE MONTH(w.watch_date) = MONTH(CURRENT_DATE)
  AND YEAR(w.watch_date) = YEAR(CURRENT_DATE)
GROUP BY m.movie_id, m.title
ORDER BY watch_count DESC
LIMIT 5;


