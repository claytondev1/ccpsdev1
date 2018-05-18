view: fact_student_daily_attendance {
  sql_table_name: dbo.factStudentDailyAttendance ;;

  dimension: academic_year_key {
    type: number
    sql: ${TABLE}.AcademicYearKey ;;
  }

  dimension: attendance_event_category_type_key {
    type: number
    sql: ${TABLE}.AttendanceEventCategoryTypeKey ;;
  }

  dimension: attendance_event_reason {
    type: string
    sql: ${TABLE}.AttendanceEventReason ;;
  }

  dimension: attendance_event_type_key {
    type: number
    sql: ${TABLE}.AttendanceEventTypeKey ;;
  }

  dimension: attended_period_count {
    type: number
    sql: ${TABLE}.AttendedPeriodCount ;;
  }

  dimension: attended_period_count_ytd {
    type: number
    sql: ${TABLE}.AttendedPeriodCountYTD ;;
  }

  dimension: educational_environment_key {
    type: number
    sql: ${TABLE}.EducationalEnvironmentKey ;;
  }

  dimension: event_date_key {
    type: number
    sql: ${TABLE}.EventDateKey ;;
  }

  dimension: expected_period_count {
    type: number
    sql: ${TABLE}.ExpectedPeriodCount ;;
  }

  dimension: expected_period_count_ytd {
    type: number
    sql: ${TABLE}.ExpectedPeriodCountYTD ;;
  }

  dimension: meta_edit_batch_id {
    type: string
    sql: ${TABLE}.Meta_EditBatchID ;;
  }

  dimension: meta_edit_by {
    type: string
    sql: ${TABLE}.Meta_EditBy ;;
  }

  dimension_group: meta_edit {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Meta_EditDate ;;
  }

  dimension_group: meta_entry {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Meta_EntryDate ;;
  }

  dimension: meta_md5_hash {
    type: string
    sql: ${TABLE}.Meta_MD5Hash ;;
  }

  dimension: meta_unique_key_md5_hash {
    type: string
    sql: ${TABLE}.Meta_UniqueKey_MD5Hash ;;
  }

  dimension: school_key {
    type: number
    sql: ${TABLE}.SchoolKey ;;
  }

  dimension: student_attendance_key {
    type: number
    sql: ${TABLE}.StudentAttendanceKey ;;
  }

  dimension: student_key {
    type: number
    sql: ${TABLE}.StudentKey ;;
  }

  dimension: unexecused_period_count {
    type: number
    sql: ${TABLE}.UnexecusedPeriodCount ;;
  }

  dimension: unexecused_period_count_ytd {
    type: number
    sql: ${TABLE}.UnexecusedPeriodCountYTD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
