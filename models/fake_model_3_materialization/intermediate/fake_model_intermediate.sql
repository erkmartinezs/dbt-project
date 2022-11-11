{{  config(materialized='ephemeral',
    schema='test_materialized')}}

-- se puede configurar cada qry como ephemeral o por modelo/carpetas en dbt_project.yml
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