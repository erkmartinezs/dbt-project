{% snapshot snp_fake_model %}

{{
    config(
    target_schema='snapshots',
    unique_key='id' ,
    alias='snp_fake_model',
    strategy='check',
    check_cols='all'

)
}}

SELECT  *
FROM    {{ ref('fake_model')}}

{% endsnapshot%}