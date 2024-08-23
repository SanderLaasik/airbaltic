{{ 
    config(
        unique_key='city_id'
    ) 
}}

WITH trips AS (
    SELECT DISTINCT
        departure_city_id,
        departure_city_name,
        arrival_city_id,
        arrival_city_name
    FROM {{ ref('int_aws__trips') }}
),
cities AS (
    SELECT DISTINCT
        departure_city_id AS city_id,
        departure_city_name AS city_name
    FROM trips
    UNION
    SELECT DISTINCT
        arrival_city_id AS city_id,
        arrival_city_name AS city_name
    FROM trips
)

SELECT * FROM cities