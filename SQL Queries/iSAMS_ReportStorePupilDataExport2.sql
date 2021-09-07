SELECT * FROM ( SELECT DISTINCT TblReportsStoreGrades.txtGrade collate database_default as txtValue, TblReportsStoreGrades.intGradeID as intOrder, 'center' as Alignment, 1 as [type] ,(SELECT COUNT(1) FROM TblTeachingManagerSets sets WHERE sets.intSubject = TblReportsStore.intID AND TblReportsStore.txtSubmitBy = sets.txtTeacher) as PrimaryTeacher FROM TblReportsStore INNER JOIN TblReportsStoreGrades ON TblReportsStore.TblReportsStoreID = TblReportsStoreGrades.intReportID WHERE (TblReportsStore.intReportCycle = 71) AND (TblReportsStore.txtSchoolID = '114522518047') AND (intReportType = 11 OR TblReportsStore.txtID = 'Art-TC') AND (TblReportsStore.intTemplate = 1075) AND intReportType = 1 AND intProgress = 1 AND intGradeID IN (167, 168, 169)) t  ORDER BY PrimaryTeacher desc, [type], intOrder;
