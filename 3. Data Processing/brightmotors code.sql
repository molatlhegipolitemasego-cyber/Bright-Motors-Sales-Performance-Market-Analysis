WITH base AS (

    SELECT
        vin,

        TRIM(UPPER(state)) AS state,
        TRIM(UPPER(make)) AS make,
        TRIM(UPPER(model)) AS model,
        TRIM(UPPER(body)) AS body,
        TRIM(UPPER(transmission)) AS transmission,
        TRIM(UPPER(seller)) AS seller,

        year AS vehicle_year,
        sellingprice,
        mmr,
        odometer,
        condition

    FROM `consultation-class`.`default`.`car_sales_data`
),

cleaned AS (

    SELECT *
    FROM base
    WHERE
        sellingprice IS NOT NULL
        AND sellingprice BETWEEN 1000 AND 80000   -- 🔥 removes extreme outliers
        AND mmr IS NOT NULL
        AND odometer BETWEEN 0 AND 250000         -- 🔥 removes junk mileage
        AND vehicle_year BETWEEN 1995 AND 2024    -- 🔥 removes unrealistic years
)

SELECT

    vin,
    seller,
    state,
    make,
    model,
    body,
    transmission,

    vehicle_year,
    sellingprice,
    mmr,
    odometer,
    condition,

    (sellingprice - mmr) AS market_gap,

    ROUND((sellingprice - mmr) / NULLIF(mmr, 0) * 100, 2) AS market_gap_pct,

    CASE
        WHEN sellingprice > mmr THEN 'Above Market'
        WHEN sellingprice < mmr THEN 'Below Market'
        ELSE 'At Market'
    END AS pricing_position,

    CASE
        WHEN sellingprice < 10000 THEN 'Budget'
        WHEN sellingprice < 30000 THEN 'Mid Market'
        ELSE 'Premium'
    END AS price_segment,

    CASE
        WHEN odometer < 30000 THEN 'Low Mileage'
        WHEN odometer < 90000 THEN 'Medium Mileage'
        ELSE 'High Mileage'
    END AS mileage_segment,

    CASE
        WHEN (vehicle_year >= 2020) THEN 'Nearly New'
        WHEN (vehicle_year BETWEEN 2010 AND 2019) THEN 'Used'
        ELSE 'Old'
    END AS vehicle_age_group,

    CASE
        WHEN condition >= 40 THEN 'Excellent'
        WHEN condition >= 30 THEN 'Good'
        WHEN condition >= 20 THEN 'Fair'
        ELSE 'Poor'
    END AS condition_rating

FROM cleaned;
