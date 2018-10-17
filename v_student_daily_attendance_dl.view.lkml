view: v_student_daily_attendance_dl {
  sql_table_name: dbo.vStudentDailyAttendance_DL ;;

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
    sql: ${TABLE}.AttendanceEventCategoryTypeId ;;
  }

  dimension: early_departure_count {
    type: number
    sql: ${TABLE}.EarlyDepartureCount ;;
  }

  dimension: event_date_key {
    type: number
    sql: ${TABLE}.EventDateKey ;;
  }

  dimension: excused_count {
    type: number
    sql: ${TABLE}.ExcusedCount ;;
  }

  dimension: is_present {
    type: string
    sql: ${TABLE}.isPresent ;;
  }

  dimension: leaeducation_organization_key {
    type: number
    sql: ${TABLE}.LEAEducationOrganizationKey ;;
  }

  dimension: off_campus_count {
    type: number
    sql: ${TABLE}.OffCampusCount ;;
  }

  dimension: present_count {
    type: number
    sql: ${TABLE}.PresentCount ;;
  }

  dimension: school_education_organization_key {
    type: number
    sql: ${TABLE}.SchoolEducationOrganizationKey ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
