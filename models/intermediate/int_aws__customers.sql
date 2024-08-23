WITH cust AS (
    SELECT 
        customer_id,
        name AS customer_name,
        customer_group_id,
        email,
        phone_number
    FROM {{ ref('stg_aws__customers') }}
)

SELECT * FROM cust