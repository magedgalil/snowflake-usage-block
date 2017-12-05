view: table_constraints {
  sql_table_name: ACCOUNT_USAGE_DEV.TABLE_CONSTRAINTS ;;

  dimension: comment {
    type: string
    sql: ${TABLE}.COMMENT ;;
  }

  dimension: constraint_catalog {
    type: string
    sql: ${TABLE}.CONSTRAINT_CATALOG ;;
  }

  dimension: constraint_name {
    type: string
    sql: ${TABLE}.CONSTRAINT_NAME ;;
  }

  dimension: constraint_schema {
    type: string
    sql: ${TABLE}.CONSTRAINT_SCHEMA ;;
  }

  dimension: constraint_type {
    type: string
    sql: ${TABLE}.CONSTRAINT_TYPE ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATED ;;
  }

  dimension_group: deleted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DELETED_AT ;;
  }

  dimension: enforced {
    type: yesno
    sql: ${TABLE}.ENFORCED ;;
  }

  dimension: initially_deferred {
    type: yesno
    sql: ${TABLE}.INITIALLY_DEFERRED ;;
  }

  dimension: is_deferrable {
    type: yesno
    sql: ${TABLE}.IS_DEFERRABLE ;;
  }

  dimension_group: last_altered {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LAST_ALTERED ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}.TABLE_CATALOG ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}.TABLE_SCHEMA ;;
  }

  measure: count {
    type: count
    drill_fields: [constraint_name, table_name]
  }
}
