{{ config(materialized='table') }}

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

-- this model load the table in default schema target (dbt_bq)