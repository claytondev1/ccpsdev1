view: lastfiveenrollment {
  derived_table: {
    sql: SELECT

        AcademicYear.AcademicYearID  AS "Year",
        COUNT(CASE WHEN (Enrollment.isLastRecordInSchoolYear = '1') AND (Enrollment.isNoShow = '0') AND (Enrollment.isSchoolChoiceTransfer = '1') THEN 1 ELSE NULL END) AS "Enrollment"
      FROM dbo.factStudentSchoolEnrollment  AS Enrollment
      LEFT JOIN dbo.refAcademicYear  AS AcademicYear ON Enrollment.AcademicYearKey = AcademicYear.AcademicYearKey
      where AcademicYear.[AcademicYearID] in  ('2017-2018','2016-2017', '2015-2016','2014-2015','2013-2014')
      GROUP BY AcademicYear.AcademicYearID
      ORDER BY Year
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: year {
    type: string
    sql: ${TABLE}.Year ;;
  }

  dimension: enrollment {
    type: number
    sql: ${TABLE}.Enrollment ;;
  }

  set: detail {
    fields: [year, enrollment]
  }
}
