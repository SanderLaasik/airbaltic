WITH planes AS (
    SELECT 
        airplane_id AS aeroplane_id,
        HASH(manufacturer, airplane_model) AS model_id
    FROM {{ ref('stg_aws__aeroplanes') }}
)

SELECT * FROM planes