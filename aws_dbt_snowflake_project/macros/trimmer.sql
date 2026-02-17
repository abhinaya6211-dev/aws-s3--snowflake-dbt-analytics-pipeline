-- transformation for listings data, trims whitespace and converts to uppercase to create silver level
{% macro trimmer(column, node) %}
  {{ column|trim|upper }}  
{% endmacro %}