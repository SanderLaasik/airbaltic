{{ 
    config(
        unique_key='customer_group_type_id'
    ) 
}}

WITH types AS (
    SELECT DISTINCT
        customer_group_type_id,
        customer_group_type_name
    FROM {{ ref('int_aws__customer_groups') }}
)

SELECT * FROM types