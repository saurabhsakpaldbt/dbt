{% macro getweekended() %}

{% set query %}
select PREVIOUS_DAY(current_date(), 'Sunday') AS "Last Sunday"
{% endset %}

{% if execute %}
   
{% set results = run_query(query).columns[0].values()[0] %}
select {{results}}
{% endif %}

{% endmacro %}