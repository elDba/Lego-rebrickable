CREATE USER [df-pablo-test]
FROM EXTERNAL PROVIDER;

ALTER ROLE db_datawriter ADD MEMBER [df-pablo-test];

ALTER ROLE db_datareader ADD MEMBER [df-pablo-test];

ALTER ROLE db_ddladmin ADD MEMBER [df-pablo-test];