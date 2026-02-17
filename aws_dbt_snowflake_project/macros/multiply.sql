-- transformations for bookings data to create silver level, multiplies the price and quantity columns to get total price
{% macro multiply(a, b, precision) %}
  round( {{ a }} * {{ b }}, {{ precision }})
{% endmacro %} 