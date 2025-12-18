SELECT
    u.region,
    SUM(w.watch_time) / 60 AS total_watch_hours,
    SUM(p.amount) AS total_revenue
FROM Users u
LEFT JOIN WatchHistory w ON u.user_id = w.user_id
LEFT JOIN Payments p ON u.user_id = p.user_id
GROUP BY u.region
ORDER BY total_revenue DESC;