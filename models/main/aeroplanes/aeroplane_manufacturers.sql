{{ 
    config(
        unique_key='manufacturer_id'
    ) 
}}

WITH manufacturers AS (
    SELECT DISTINCT 
        manufacturer_id,
        manufacturer_name
    FROM {{ ref('int_aws__aeroplane_models') }}
)

SELECT * FROM manufacturers