{{ config ( 
    materialized = 'ephemeral' 
) }}

WITH listings AS 
(
    SELECT 
        LISTING_ID,
        PROPERTY_TYPE,
        ROOM_TYPE,
        CITY,
        COUNTRY,
        PRICE_PER_NIGHT_TAG,
        LISTING_CREATED_AT
    FROM {{ ref('obt') }}
) 
SELECT * FROM LISTINGS

-- only context cols in this dimension table 
-- dimension table for this is in snapshots/dim_hosts.yml