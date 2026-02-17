{{ config ( 
    materialized = 'ephemeral' 
) }}

WITH hosts AS 
(
    SELECT 
        HOST_ID,
        HOST_NAME,
        HOST_SINCE,
        IS_SUPERHOST,
        RESPONSE_RATE_CATEGORY,
        HOST_CREATED_AT
    FROM {{ ref('obt') }}
) 
SELECT * FROM HOSTS

-- only context cols in this dimension table 
-- dimension table for this is in snapshots/dim_hosts.yml