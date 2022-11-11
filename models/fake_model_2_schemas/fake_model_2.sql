{{  config(materialized='table',
    alias='fake_model_schema',
    schema='test_schema'
)
}}

--config(materialized='table',
--     alias='fake_model_schema', --change table name
--     schema='staging' --change schema target
--     #en caso de no alterar esta config el nombre seria el del .yml 
--     y el esquema por defecto#


with src_dd as(

    SELECT  *
    FROM {{source('wh_dummie','dummies_data')}}
)

, final as(
    SELECT  *
    FROM    src_dd
)

SELECT  *
FROM    final 
WHERE REGEXP_CONTAINS(email,r'([.com]$)')=TRUE

-- this model loads table in the specific schema declared (staging) in config

--https://docs.getdbt.com/docs/build/custom-schemas
    