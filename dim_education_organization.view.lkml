view: dim_education_organization {
  sql_table_name: dbo.dimEducationOrganization ;;

  dimension: education_organization_id {
    type: string
    sql: ${TABLE}.EducationOrganizationId ;;
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

  dimension: name_of_institution {
    type: string
    sql: ${TABLE}.NameOfInstitution ;;
  }

  dimension: operational_status_key {
    type: number
    sql: ${TABLE}.OperationalStatusKey ;;
  }

  dimension: organization_category_type_key {
    type: number
    sql: ${TABLE}.OrganizationCategoryTypeKey ;;
  }

  dimension: short_name_of_institution {
    type: string
    sql: ${TABLE}.ShortNameOfInstitution ;;
  }

  dimension: state_organization_id {
    type: string
    sql: ${TABLE}.StateOrganizationId ;;
  }

  dimension: web_site {
    type: string
    sql: ${TABLE}.WebSite ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
