SELECT
    f.asset_id,
    a.symbol,
    a.name,
    d.full_timestamp AS timestamp,
    f.price_usd,
    f.vol_24h,
    f.total_vol,
    f.chg_24h,
    f.chg_7d,
    f.market_cap
FROM fact_market f
JOIN dim_asset a
    ON f.asset_id = a.asset_id
JOIN dim_date d
    ON f.date_id = d.date_id
ORDER BY
    f.asset_id,
    d.full_timestamp;
