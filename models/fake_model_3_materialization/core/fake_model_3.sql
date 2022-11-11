{{  config(materialized='table',
    alias='fake_model_materialized',
    schema='test_materialized'
)
}}


SELECT  *
FROM    {{ref('fake_model_intermediate')}} 
WHERE REGEXP_CONTAINS(email,r'([.com]$)')=TRUE
