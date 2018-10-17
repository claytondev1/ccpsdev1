view: dim_student {
  sql_table_name: dbo.dimStudent ;;

  dimension: birth_city {
    type: string
    sql: ${TABLE}.BirthCity ;;
  }

  dimension: birth_country_key {
    type: number
    sql: ${TABLE}.BirthCountryKey ;;
  }

  dimension: birth_state_key {
    type: number
    sql: ${TABLE}.BirthStateKey ;;
  }

  dimension: dobkey {
    type: number
    sql: ${TABLE}.DOBKey ;;
  }

  dimension_group: effective_end {
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
    sql: ${TABLE}.EffectiveEndDate ;;
  }

  dimension_group: effective_start {
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
    sql: ${TABLE}.EffectiveStartDate ;;
  }

  dimension: entered_usdate_key {
    type: number
    sql: ${TABLE}.EnteredUSDateKey ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: generation_suffix_key {
    type: number
    sql: ${TABLE}.GenerationSuffixKey ;;
  }

  dimension: is_from_multiple_birth {
    type: string
    sql: ${TABLE}.isFromMultipleBirth ;;
  }

  dimension: is_hispanic_latino {
    type: string
    sql: ${TABLE}.isHispanicLatino ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: full_name {
    type: string
    sql: ${first_name} || ' '  || ${last_name} ;;
    link: {
      label: "Student Profile"
      url: "http://"
    }
  }

  dimension: maiden_name {
    type: string
    sql: ${TABLE}.MaidenName ;;
  }

  dimension: meta_auto_add_date {
    type: string
    sql: ${TABLE}.Meta_AutoAddDate ;;
  }

  dimension: meta_auto_add_flag {
    type: string
    sql: ${TABLE}.Meta_AutoAddFlag ;;
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

  dimension: middle_name {
    type: string
    sql: ${TABLE}.MiddleName ;;
  }

  dimension: old_ethnicity_type_key {
    type: number
    sql: ${TABLE}.OldEthnicityTypeKey ;;
  }

  dimension: personal_information_verification_type_key {
    type: number
    sql: ${TABLE}.PersonalInformationVerificationTypeKey ;;
  }

  dimension: personal_title_key {
    type: number
    sql: ${TABLE}.PersonalTitleKey ;;
  }

  dimension: sex_type_key {
    type: number
    sql: ${TABLE}.SexTypeKey ;;
  }

  dimension: student_id {
    type: string
    sql: ${TABLE}.StudentId ;;
  }

  dimension: student_key {
    type: number
    sql: ${TABLE}.StudentKey ;;
  }

  dimension: student_status_key {
    type: number
    sql: ${TABLE}.StudentStatusKey ;;
  }

  measure: sum_of_student {
    type:  sum
    sql:  ${student_id};;
  }

  measure: count {
    type: count
    drill_fields: [first_name, middle_name, last_name, maiden_name]
  }
}
