USE PV_521_Import
SET DATEFIRST 1;

EXEC sp_SelectSheduleFor N'PV_521'
--PRINT dbo.GetNextLearningDay(N'PV_521', DEFAULT);
PRINT dbo.GetNextLearningDay(N'PV_521', N'2026-03-05');
PRINT dbo.GetNextLearningDay(N'PV_521', N'2026-03-05');