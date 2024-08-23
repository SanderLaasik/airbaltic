SELECT 
    trip_id,
    TRIM(origin_city) AS origin_city,
    TRIM(destination_city) AS destination_city,
    airplane_id,
    start_timestamp,
    end_timestamp
FROM {{ source('aws_raw', 'trips') }}
--Would filter out only new/changed records if a change timestamp column existed in source