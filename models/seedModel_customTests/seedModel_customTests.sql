{{  config(materialized='table',
labels = {'owner': 'erik', 'labelx': 'x'},
    alias='seed_model_custom_test',
    schema='test_custom_test'
    
)
}}


with csv as (
    SELECT  *,
            CASE    WHEN  entry_date = cast({{var('var_date')}} as string)
                    THEN 'variable ok'
                    ELSE 'N/A'
            END AS var_test,
            CASE    WHEN  entry_date = "{{var('var_date')}}"
                    THEN 'variable ok'
                    ELSE 'N/A'
            END AS var_test_v2
    FROM {{ref('data_test_outlier')}}
)

SELECT *
FROM csv


-- this model loads table in the specific schema declared (test_custom_test) in config

--  https://docs.getdbt.com/guides/legacy/writing-custom-generic-tests
--  https://docs.getdbt.com/docs/build/project-variableshttps://docs.getdbt.com/docs/build/project-variables
--  https://docs.getdbt.com/reference/resource-configs/bigquery-configs#specifying-tags

-- declaro variables con:
-- > $ dbt run --vars 'key: value'


/*
Los dos siguientes son válidos y equivalentes:

$ dbt run --vars '{"key": "value", "date": 20180101}'
$ dbt run --vars '{key: value, date: 20180101}'
Si solo se establece una variable, los corchetes son opcionales, por ejemplo:

$ dbt run --vars 'key: value'
*/