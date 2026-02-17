-- transformation for listings  data, tags the price column as low, medium, or high to create silver level
{% macro tag(column) %}
    CASE
        WHEN {{ column }}  < 100 THEN 'low'
        WHEN {{ column }}  < 200 THEN 'medium'
        ELSE 'high'
    END
{% endmacro %} 