IF OBJECT_ID('dbo.dim_rider') IS NOT NULL
    DROP EXTERNAL TABLE dbo.dim_rider;
GO

CREATE EXTERNAL TABLE dbo.dim_rider
WITH (
    LOCATION = 'Star_schema/dim_rider',
    DATA_SOURCE = [divvyprojectcontainer1_divvyprojectstorageacc1_dfs_core_windows_net],
    FILE_FORMAT = [SynapseDelimitedTextFormat]
)
AS
SELECT
    CAST(rider_id AS VARCHAR(50))  AS rider_id,
    first_name                     AS first_name,
    last_name                      AS last_name,
    address                        AS address,
    birthday                       AS birthday,
    account_start_date             AS account_start_date,
    account_end_date               AS account_end_date,
    is_member                      AS is_member
FROM dbo.staging_rider;
GO