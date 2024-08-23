{{ 
    config(
        unique_key='trip_id'
    ) 
}}

WITH trips AS (
    SELECT
        trip_id,
        departure_city_id,
        arrival_city_id,
        aeroplane_id,
        start_timestamp,
        end_timestamp
    FROM {{ ref('int_aws__trips') }}
)

SELECT * FROM trips