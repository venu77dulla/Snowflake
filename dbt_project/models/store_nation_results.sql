{{ config(materialized='table') }}

{% set results = run_query(call_sample_nation()) %}

{% if execute %}
  {% if results %}
    {{ results }}
  {% else %}
    SELECT 'No results returned from sample_nation' AS status
  {% endif %}
{% endif %}
