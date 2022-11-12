{{  config(materialized='table',
    alias='fake_model_materialized',
    schema='test_materialized'
)
}}


SELECT  *
FROM    {{ref('fake_model_intermediate')}} 
WHERE REGEXP_CONTAINS(email,r'([.com]$)')=TRUE


-- this model loads table in the specific schema declared (test_materialized) in config

-- https://docs.getdbt.com/docs/build/materializations