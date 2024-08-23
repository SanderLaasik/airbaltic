SELECT 
    TRIM(manufacturer) AS manufacturer,
    TRIM(model) AS model,
    max_weight,
    max_seats,
    max_distance,
    TRIM(engine_type) AS engine_type
FROM {{ source('aws_raw', 'aeroplane_models') }}
--Would filter out only new/changed records if a change timestamp column existed in source