WITH 

orders AS (
    SELECT *
    FROM {{ ref('trip_orders') }}
),
customers AS (
    SELECT
        customer_id,
        customer_name
    FROM {{ ref('customers') }}
),
trips AS (
    SELECT
        trip_id,
        departure_city_name||' - '||arrival_city_name AS trip_name,
        CAST(start_timestamp AS DATE) AS departure_date
    FROM {{ ref('dm_trips_vw') }}
),
joined AS (
    SELECT
        ord.order_id,
        ord.customer_id,
        cust.customer_name,
        ord.trip_id,
        trip.trip_name,
        trip.departure_date,
        ord.price_amt,
        ord.seat_no,
        ord.status
    FROM orders AS ord
    JOIN customers AS cust
        ON ord.customer_id=cust.customer_id
    JOIN trips AS trip
        ON ord.trip_id=trip.trip_id
)

SELECT * FROM joined