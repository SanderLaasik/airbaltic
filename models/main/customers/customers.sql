{{ 
    config(
        unique_key='customer_id'
    )
}}

WITH cust AS (
    SELECT 
        customer_id,
        customer_name,
        customer_group_id,
        email,
        phone_number
    FROM {{ ref('int_aws__customers') }}
)

SELECT * FROM cust