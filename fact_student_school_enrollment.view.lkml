view: fact_student_school_enrollment {
  sql_table_name: dbo.factStudentSchoolEnrollment ;;

  dimension: academic_year_key {
    type: number
    sql: ${TABLE}.AcademicYearKey ;;
  }

  dimension: academic_year {
    type: string
    sql: CASE WHEN ${academic_year_key} = 11 THEN '2017 - 2018'
         WHEN ${academic_year_key} = 10 THEN '2016 - 2017'
        WHEN ${academic_year_key} = 9 THEN '2015 - 2016'
        WHEN ${academic_year_key} = 8 THEN '2014 - 2015'
        WHEN ${academic_year_key} = 7 THEN '2013 - 2014'
        ELSE NULL END;;
  }

  dimension: boundary_school_key {
    type: number
    sql: ${TABLE}.BoundarySchoolKey ;;
  }

  dimension: class_of {
    type: number
    sql: ${TABLE}.ClassOf ;;
  }

  dimension: entry_date_key {
    type: number
    sql: ${TABLE}.EntryDateKey ;;
  }

  dimension: entry_type_key {
    type: number
    sql: ${TABLE}.EntryTypeKey ;;
  }

  dimension: exit_withdraw_date_key {
    type: number
    sql: ${TABLE}.ExitWithdrawDateKey ;;
  }

  dimension: exit_withdraw_type_key {
    type: number
    sql: ${TABLE}.ExitWithdrawTypeKey ;;
  }

  dimension: grade_level_type_key {
    type: number
    sql: ${TABLE}.GradeLevelTypeKey ;;
  }

  dimension: is_district_repeater {
    type: string
    sql: ${TABLE}.isDistrictRepeater ;;
  }

  dimension: is_last_record_in_school_year {
    type: string
    sql: ${TABLE}.isLastRecordInSchoolYear ;;
  }

  dimension: is_no_show {
    type: string
    sql: ${TABLE}.isNoShow ;;
  }

  dimension: is_repeat_grade {
    type: string
    sql: ${TABLE}.isRepeatGrade ;;
  }

  dimension: is_school_choice_transfer {
    type: string
    sql: ${TABLE}.isSchoolChoiceTransfer ;;
  }

  dimension: is_school_repeater {
    type: string
    sql: ${TABLE}.isSchoolRepeater ;;
  }

  dimension: leaeducation_organization_key {
    type: number
    sql: ${TABLE}.LEAEducationOrganizationKey ;;
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

  dimension: student_school_enrollment_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.StudentSchoolEnrollmentKey ;;
  }

  measure: count {
    label: "Enrollments"
    description: "The number of primary enrollments not including no shows"
    type: count
    filters: {
      field: is_school_choice_transfer
      value: "1"
    }
    drill_fields: []
  }

  measure: sum_of_student {
    type:  sum
     sql:  ${student_key} ;;
  }
}
