{{ 
    config(
        unique_key='model_id'
    ) 
}}

WITH planes AS (
    SELECT 
        aeroplane_id,
        model_id
    FROM {{ ref('int_aws__aeroplanes') }}
)

SELECT * FROM planes