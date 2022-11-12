{{  config(materialized='table',
    labels = {'owner': 'erik', 'labelx': 'x'},
    alias='tags_table',
    schema='test_tags',
    tags=['special']
    
)
}}

with names as (
    select 'Quentin' as name
    union all
    select 'Roma' as name
    union all
    select 'Fer' as name
    union all
    select 'Erik' as name
)

select  *, 
        'tag' as tags,
        '{{ invocation_id }}' as invocation_id
from names


 
-- dbt run -m tag:tagtest --> ejecutar modelos con Xtag

-- dbt test -m tag:unique_notnull -->testear modelos con Xtag

-- dbt run -m tag:tagtest --exclude tag:special --> ejecutar todos los tags tagtest excluyendo el modelo con tag special

-- https://docs.getdbt.com/reference/resource-configs/tags