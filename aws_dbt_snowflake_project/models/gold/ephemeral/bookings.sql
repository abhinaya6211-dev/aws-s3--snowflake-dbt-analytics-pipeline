{{ config ( 
    materialized = 'ephemeral' 
) }}

WITH bookings AS 
(
    SELECT 
        BOOKING_ID,
        BOOKING_DATE,
        BOOKING_STATUS,
        CREATED_AT
    FROM {{ ref('obt') }}
) 
SELECT * FROM bookings

-- only context cols in this dimension table 
-- dimension table for this is in snapshots/dim_bookings.yml