SELECT 
    customer_id,
    TRIM(name) AS name,
    customer_group_id,
    TRIM(email) AS email,
    TRIM(phone_number) AS phone_number
FROM {{ source('aws_raw', 'customers') }}
--Would filter out only new/changed records if a change timestamp column existed in source