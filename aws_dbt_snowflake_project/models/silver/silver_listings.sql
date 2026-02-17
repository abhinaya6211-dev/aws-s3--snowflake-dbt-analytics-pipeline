-- using the transformations created in macros tags.sql
{{config(materialized = 'incremental', unique_key = 'LISTING_ID') }}

SELECT
    LISTING_ID,
    HOST_ID,
    ROOM_TYPE,
    PROPERTY_TYPE,
    BEDROOMS,
    BATHROOMS,
    CITY,
    COUNTRY,
    ACCOMMODATES,
    PRICE_PER_NIGHT,
    {{ tag('PRICE_PER_NIGHT') }} AS PRICE_PER_NIGHT_TAG,
    CREATED_AT
FROM {{ ref('bronze_listings') }}