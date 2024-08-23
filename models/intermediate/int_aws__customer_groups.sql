WITH cust_gr AS (
    SELECT 
        id AS customer_group_id,
        name AS customer_group_name,
        HASH(type) AS customer_group_type_id,
        type AS customer_group_type_name,
        registry_number
    FROM {{ ref('stg_aws__customer_groups') }}
)

SELECT * FROM cust_gr