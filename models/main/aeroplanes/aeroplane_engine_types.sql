{{ 
    config(
        unique_key='engine_type_id'
    ) 
}}

WITH engine_types AS (
    SELECT DISTINCT
        engine_type_id,
        engine_type_name
    FROM {{ ref('int_aws__aeroplane_models') }}
)

SELECT * FROM engine_types