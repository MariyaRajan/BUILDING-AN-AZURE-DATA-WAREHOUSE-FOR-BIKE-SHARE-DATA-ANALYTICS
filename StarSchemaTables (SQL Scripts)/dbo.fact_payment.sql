CREATE EXTERNAL TABLE dbo.fact_payment
WITH (
    LOCATION = 'Star_schema/fact_payment',
    DATA_SOURCE = [divvyprojectcontainer1_divvyprojectstorageacc1_dfs_core_windows_net],
    FILE_FORMAT = [SynapseDelimitedTextFormat]
)
AS
SELECT
    payment_id,
    LEFT(payment_date, 10) AS date_key,
    amount,
    rider_id
FROM dbo.staging_payment;
GO