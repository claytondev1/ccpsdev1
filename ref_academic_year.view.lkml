view: ref_academic_year {
  sql_table_name: dbo.refAcademicYear ;;

  dimension: academic_year_desc {
    type: string
    sql: ${TABLE}.AcademicYearDesc ;;
  }

  dimension: academic_year_id {
    type: string
    sql: ${TABLE}.AcademicYearID ;;
  }

  dimension: academic_year_key {
    type: number
    sql: ${TABLE}.AcademicYearKey ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
