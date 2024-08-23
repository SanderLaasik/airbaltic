SELECT 
    id,
    TRIM(name) AS name,
    TRIM(type) AS type,
    TRIM(registry_number) AS registry_number
FROM {{ source('aws_raw', 'customer_groups') }}
--Would filter out only new/changed records if a change timestamp column existed in source