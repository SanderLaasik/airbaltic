SELECT 
    airplane_id,
    TRIM(manufacturer) AS manufacturer,
    TRIM(airplane_model) AS airplane_model
FROM {{ source('aws_raw', 'aeroplanes') }}
--Would filter out only new/changed records if a change timestamp column existed in source