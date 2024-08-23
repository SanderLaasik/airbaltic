WITH trips AS (
    SELECT 
        trip_id,
        HASH(origin_city) AS departure_city_id,
        origin_city AS departure_city_name,
        HASH(destination_city) AS arrival_city_id,
        destination_city AS arrival_city_name,
        airplane_id AS aeroplane_id,
        start_timestamp,
        end_timestamp
    FROM {{ ref('stg_aws__trips') }}
)

SELECT * FROM trips