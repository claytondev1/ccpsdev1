view: rel_student_characteristics {
  sql_table_name: dbo.relStudentCharacteristics ;;

  dimension: designated_by {
    type: string
    sql: ${TABLE}.DesignatedBy ;;
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

  dimension: student_characteristic_key {
    type: number
    sql: ${TABLE}.StudentCharacteristicKey ;;
  }

  dimension: student_characteristics_key {
    type: number
    sql: ${TABLE}.StudentCharacteristicsKey ;;
  }

  dimension: student_key {
    type: number
    sql: ${TABLE}.StudentKey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
