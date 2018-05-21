view: ref_sex_type {
  sql_table_name: dbo.refSexType ;;

  dimension: meta_auto_add_date {
    hidden: yes
    type: string
    sql: ${TABLE}.Meta_AutoAddDate ;;
  }

  dimension: meta_auto_add_flag {
    hidden: yes
    type: string
    sql: ${TABLE}.Meta_AutoAddFlag ;;
  }

  dimension: meta_edit_batch_id {
    hidden: yes
    type: string
    sql: ${TABLE}.Meta_EditBatchID ;;
  }

  dimension: meta_edit_by {
    hidden: yes
    type: string
    sql: ${TABLE}.Meta_EditBy ;;
  }

  dimension_group: meta_entry {
    hidden: yes
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
    hidden: yes
    type: string
    sql: ${TABLE}.Meta_MD5Hash ;;
  }

  dimension: meta_unique_key_md5_hash {
    hidden: yes
    type: string
    sql: ${TABLE}.Meta_UniqueKey_MD5Hash ;;
  }

  dimension: sex_type_desc {
    type: string
    sql: ${TABLE}.SexTypeDesc ;;
  }

  dimension: sex_type_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SexTypeID ;;
  }

  dimension: sex_type_key {
    hidden: yes
    type: number
    sql: ${TABLE}.SexTypeKey ;;
  }

}
