{{  config(materialized='table',
    alias='seed_model',
    schema='test_seed'
)
}}


with csv as (
    SELECT *    
    FROM {{ref('seed_data')}}
)

SELECT *
FROM csv

-- this model loads table in the specific schema declared (test_seed) in config

--  https://docs.getdbt.com/docs/build/seeds
