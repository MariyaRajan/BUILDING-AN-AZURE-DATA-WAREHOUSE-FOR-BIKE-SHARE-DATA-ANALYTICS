IF OBJECT_ID('dbo.dim_station') IS NOT NULL
    DROP EXTERNAL TABLE dbo.dim_station;
GO

CREATE EXTERNAL TABLE dbo.dim_station
WITH (
    LOCATION = 'Star_schema/dim_station',
    DATA_SOURCE = [divvyprojectcontainer1_divvyprojectstorageacc1_dfs_core_windows_net],
    FILE_FORMAT = [SynapseDelimitedTextFormat]
)
AS
SELECT
    station_id   AS station_id,
    station_name AS name,
    latitude     AS latitude,
    longitude    AS longitude
FROM dbo.staging_station;
GO