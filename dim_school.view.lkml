view: dim_school {
  sql_table_name: dbo.dimSchool ;;

  dimension: admin_funding_control_key {
    type: number
    sql: ${TABLE}.AdminFundingControlKey ;;
  }

  dimension: charter_status_key {
    type: number
    sql: ${TABLE}.CharterStatusKey ;;
  }

  dimension: education_organization_key {
    type: number
    sql: ${TABLE}.EducationOrganizationKey ;;
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

  dimension: is_active {
    type: string
    sql: ${TABLE}.isActive ;;
  }

  dimension: local_education_agency_key {
    type: number
    sql: ${TABLE}.LocalEducationAgencyKey ;;
  }

  dimension: magnet_program_emphasis_key {
    type: number
    sql: ${TABLE}.MagnetProgramEmphasisKey ;;
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

  dimension: school_category_type_key {
    type: number
    sql: ${TABLE}.SchoolCategoryTypeKey ;;
  }

  dimension: school_id {
    type: string
    sql: ${TABLE}.SchoolId ;;
  }

  dimension: school_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.SchoolKey ;;
  }

  dimension: school_type_key {
    type: number
    sql: ${TABLE}.SchoolTypeKey ;;
  }

  dimension: title_ipart_aschool_designation_key {
    type: number
    sql: ${TABLE}.TitleIPartASchoolDesignationKey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
