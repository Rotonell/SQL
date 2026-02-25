USE PV_521_Import
SET DATEFIRST 1;

EXEC sp_InsertSheduleStacionar N'PV_521',N'%ADO.NET%' , N'Юыху', N'2026-01-21' ;
EXEC sp_SelectSheduleFor N'PV_521';