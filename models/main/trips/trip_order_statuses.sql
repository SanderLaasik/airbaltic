{{ 
    config(
        unique_key='status_id'
    ) 
}}

WITH statuses AS (
    SELECT DISTINCT
        status_id,
        status_name
    FROM {{ ref('int_aws__trip_orders') }}
)

SELECT * FROM statuses