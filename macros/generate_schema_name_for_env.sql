{% macro generate_schema_name_for_env(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    
    {%- if env_var('DBT_TARGET_ENV', 'dev') in ('staging', 'prod') and custom_schema_name is not none -%}

        {{ custom_schema_name | trim }}     

    {%- elif env_var('DBT_TARGET_ENV', 'dev') in ('dev') -%}

        {{ default_schema}}

    {%- else -%}

        {{ default_schema }}

    {%- endif -%}

{%- endmacro %}