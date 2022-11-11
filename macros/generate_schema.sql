-- esta macro sirve si quieremos crear un nuevo schema que 
-- no tenga el schema_defaut_ al inicio
-- afecta a todos los modelos****

--https://docs.getdbt.com/docs/build/custom-schemas

{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        {{ default_schema }}

    {%- else -%}

        {{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}