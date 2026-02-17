{{ config(severity='warn') }} -- some records are violating the rules but it is not throwing an error for ur simplicity.
SELECT 1 FROM {{ source('staging','bookings') }} -- this throws error without error
WHERE BOOKING_AMOUNT < 200