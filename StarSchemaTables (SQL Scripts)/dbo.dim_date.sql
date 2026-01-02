IF OBJECT_ID('dbo.dim_date') IS NOT NULL
    DROP EXTERNAL TABLE dbo.dim_date;
GO

CREATE EXTERNAL TABLE dbo.dim_date
WITH (
    LOCATION = 'Star_schema/dim_date',
    DATA_SOURCE = [divvyprojectcontainer1_divvyprojectstorageacc1_dfs_core_windows_net],
    FILE_FORMAT = [SynapseDelimitedTextFormat]
)
AS
SELECT DISTINCT
    CAST(date_value AS VARCHAR(50)) AS date_key,
    CAST(date_value AS VARCHAR(50)) AS full_date,
    SUBSTRING(date_value, 1, 4) AS year,
    SUBSTRING(date_value, 6, 2) AS month,
    SUBSTRING(date_value, 9, 2) AS day
FROM (
    SELECT LEFT(payment_date, 10) AS date_value
    FROM dbo.staging_payment

    UNION

    SELECT LEFT(Started_At, 10) AS date_value
    FROM dbo.staging_trip
) d;
GO