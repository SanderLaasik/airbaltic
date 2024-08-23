{{ 
    config(
        unique_key='customer_group_id'
    )
}}

WITH groups AS (
    SELECT 
        customer_group_id,
        customer_group_name,
        customer_group_type_id,
        registry_number
    FROM {{ ref('int_aws__customer_groups') }}
)

SELECT * FROM groups