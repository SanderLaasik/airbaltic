WITH 

trips AS (
    SELECT *
    FROM {{ ref('trips') }}
),
cities AS (
    SELECT *
    FROM {{ ref('cities') }}
),
joined AS (
    SELECT 
        trip.trip_id,
        depart_city.city_name AS departure_city_name,
        arrive_city.city_name AS arrival_city_name,
        trip.aeroplane_id,
        trip.start_timestamp,
        trip.end_timestamp
    FROM trips AS trip
    LEFT JOIN cities AS depart_city
        ON trip.departure_city_id=depart_city.city_id
    LEFT JOIN cities AS arrive_city
        ON trip.arrival_city_id=arrive_city.city_id
)
SELECT * FROM joined