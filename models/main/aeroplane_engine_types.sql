{{ 
    config(
        materialized='incremental',
        incremental_strategy='insert_overwrite',
        partition_by=['engine_type_id']
    )
}}

WITH engine_types AS (
    SELECT DISTINCT
        engine_type_name,
        engine_type_id
    FROM {{ ref('int_aws__aeroplane_models') }}
)

SELECT * FROM engine_types