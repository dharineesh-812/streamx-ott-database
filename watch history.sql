SELECT * FROM WatchHistory 
WHERE MONTH(watch_date) = MONTH(CURRENT_DATE)
  AND YEAR(watch_date) = YEAR(CURRENT_DATE);
SELECT * FROM WatchHistory w
WHERE MONTH(w.watch_date) = 8 AND YEAR(w.watch_date) = 2025;
