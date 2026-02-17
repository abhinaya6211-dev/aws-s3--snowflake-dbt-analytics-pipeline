{{ config(materialized = 'incremental', unique_key = 'HOST_ID') }}

SELECT
    HOST_ID,
    REPLACE(HOST_NAME, ' ', '_') AS HOST_NAME,
    HOST_SINCE,
    IS_SUPERHOST,
    RESPONSE_RATE,
    CASE
        WHEN RESPONSE_RATE > 90 THEN ' VERY GOOD'
        WHEN RESPONSE_RATE > 80 THEN ' GOOD'
        WHEN RESPONSE_RATE > 70 THEN ' OK'
        ELSE ' BAD'
    END AS RESPONSE_RATE_CATEGORY,
    CREATED_AT
FROM {{ ref('bronze_hosts') }}