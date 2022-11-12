{%test outlier_value(model, column_name) %}

with validation as (

    select
        {{ column_name }} as value

    from {{ model }}

),

validation_errors as (

    select
        value

    from validation
    where value > 800000000 -- asi si pasa 
        -- between 50000000 and 500000000  --> asi no deberia pasar pero sabemos que hay algo mal

)

select *
from validation_errors

{% endtest %}