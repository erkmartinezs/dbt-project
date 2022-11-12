{% macro insert_audits(action_name) -%}

insert into `onihanzo.dbt_hooks.audits`

values("{{action_name}}",current_timestamp())

{%- endmacro%}