{{ 
    config(
        materialized='incremental',
        incremental_strategy='insert_overwrite',
        partition_by=['manufacturer_id']
    )
}}

WITH manufacturers AS (
    SELECT DISTINCT 
        manufacturer_name,
        manufacturer_id
    FROM {{ ref('int_aws__aeroplane_models') }}
)

SELECT * FROM manufacturers