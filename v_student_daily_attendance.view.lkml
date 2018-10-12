view: v_student_daily_attendance {
  sql_table_name: dbo.vStudentDailyAttendance ;;

  dimension: academic_year_key {
    type: number
    sql: ${TABLE}.AcademicYearKey ;;
  }

  dimension: attendance_event_category_type_desc {
    type: string
    sql: ${TABLE}.AttendanceEventCategoryTypeDesc ;;
  }

  dimension: attendance_event_category_type_id {
    type: string
    sql: ${TABLE}.AttendanceEventCategoryTypeID ;;
  }

  dimension: attendance_event_category_type_key {
    type: number
    sql: ${TABLE}.AttendanceEventCategoryTypeKey ;;
  }

  dimension: attended_period_count {
    type: number
    sql: ${TABLE}.AttendedPeriodCount ;;
  }

  dimension: attended_period_count_ytd {
    type: number
    sql: ${TABLE}.AttendedPeriodCountYTD ;;
  }

  dimension: early_departure_count {
    type: number
    sql: ${TABLE}.EarlyDepartureCount ;;
  }

  dimension: education_organization_key {
    type: number
    sql: ${TABLE}.EducationOrganizationKey ;;
  }

  dimension: event_date_key {
    type: number
    sql: ${TABLE}.EventDateKey ;;
  }

  dimension: excused_count {
    type: number
    sql: ${TABLE}.ExcusedCount ;;
  }

  dimension: expected_period_count {
    type: number
    sql: ${TABLE}.ExpectedPeriodCount ;;
  }

  dimension: expected_period_count_ytd {
    type: number
    sql: ${TABLE}.ExpectedPeriodCountYTD ;;
  }

  dimension: is_present {
    type: string
    sql: ${TABLE}.isPresent ;;
  }

  dimension: leakey {
    type: number
    sql: ${TABLE}.LEAKey ;;
  }

  dimension: off_campus_count {
    type: number
    sql: ${TABLE}.OffCampusCount ;;
  }

  dimension: present_count {
    type: number
    sql: ${TABLE}.PresentCount ;;
  }

  dimension: school_key {
    type: number
    sql: ${TABLE}.SchoolKey ;;
  }

  dimension: student_key {
    type: number
    sql: ${TABLE}.StudentKey ;;
  }

  dimension: tardy_count {
    type: number
    sql: ${TABLE}.TardyCount ;;
  }

  dimension: total_count {
    type: number
    sql: ${TABLE}.TotalCount ;;
  }

  dimension: unexcused_count {
    type: number
    sql: ${TABLE}.UnexcusedCount ;;
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
   drill_fields: [total_count]
  }

  measure: presentCount {
    type: count
    drill_fields: [is_present]

  }
}
