{{ 
    config(
        unique_key='model_id'
    ) 
}}

WITH models AS (
    SELECT 
        model_id,
        model_name,
        manufacturer_id,
        engine_type_id,
        max_seats,
        max_weight,
        max_distance
    FROM {{ ref('int_aws__aeroplane_models') }}
)

SELECT * FROM models