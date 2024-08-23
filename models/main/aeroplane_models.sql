{{ 
    config(
        materialized='incremental',
        incremental_strategy='insert_overwrite',
        partition_by=['model_id']
    )
}}

WITH models AS (
    SELECT 
        model_name,
        manufacturer_id,
        engine_type_id,
        max_seats,
        max_weight,
        max_distance,
        model_id
    FROM {{ ref('int_aws__aeroplane_models') }}
)

SELECT * FROM models