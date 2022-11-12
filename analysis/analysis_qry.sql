
with count as (
    select  count(*),'data_test_outlier' as name
    from    {{ref('data_test_outlier')}}

    union all

    select  count(*),'seed_data' as name
    from    {{ref('seed_data')}}
)


select  *
from count