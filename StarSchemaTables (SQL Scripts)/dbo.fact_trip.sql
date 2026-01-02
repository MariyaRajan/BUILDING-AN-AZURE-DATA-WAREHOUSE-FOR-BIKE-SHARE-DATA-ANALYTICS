CREATE EXTERNAL TABLE dbo.fact_trip
WITH (
    LOCATION = 'Star_schema/fact_trip',
    DATA_SOURCE = [divvyprojectcontainer1_divvyprojectstorageacc1_dfs_core_windows_net],
    FILE_FORMAT = [SynapseDelimitedTextFormat]
)
AS
SELECT
    Trip_Id              AS trip_id,
    Rider_Id             AS rider_id,
    LEFT(Started_At,10)  AS date_key,
    Start_Station_Id     AS start_station_id,
    End_Station_Id       AS end_station_id,
    rideable_type
FROM dbo.staging_trip;
GO
