--SQLQuery4-SELECT AggregateStudentsAndGroups.sql
USE PV_521_Import;

SELECT
	direction_name				AS N'Направление обучения'
	,COUNT(DISTINCT group_id)	AS N'Колличество групп'
	,COUNT(stud_id)				AS N'Колличество студентов'

FROM Students,Groups,Directions
WHERE  [group]	=	group_id
AND		direction	=	direction_id
GROUP BY	direction_name
;

SELECT
		direction_name				AS	N'Направление обучения'
		--,COUNT(stud_id)				AS	N'Колличество студентов'
		--,COUNT(DISTINCT group_id)	AS	N'Колличество групп'
		,(SELECT COUNT(group_id) FROM Groups WHERE direction = direction_id) AS N'Колличество групп'
		,(
		SELECT COUNT(stud_id)
		FROM Students,Groups--,Directions
		WHERE [group]=group_id
		AND direction = direction_id
		) AS	N'Колличество студентов'
FROM	Directions
;
--SELECT COUNT(group_id) FROM Groups WHERE ;