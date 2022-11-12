{{  config(materialized='table',
    alias='seed_model_custom_test',
    schema='test_custom_test'
)
}}


with csv as (
    SELECT *    
    FROM {{ref('data_test_outlier')}}
)

SELECT *
FROM csv