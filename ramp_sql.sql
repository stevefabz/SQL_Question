WITH DailyTotals AS (
    SELECT
        DATE(transaction_time) AS trans_date,
        SUM(transaction_amount) AS day_total
    FROM transactions
    WHERE DATE(transaction_time) BETWEEN '2021-01-29' AND '2021-01-31'
    GROUP BY DATE(transaction_time)
)

SELECT 
    AVG(day_total) AS rolling_3_day_average
FROM DailyTotals;

