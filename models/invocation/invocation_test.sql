with names as (
    select 'Quentin' as name
    union all
    select 'Roma' as name
    union all
    select 'Fer' as name
    union all
    select 'Erik' as name
)

select *, '{{ invocation_id }}' as invocation_id
from names