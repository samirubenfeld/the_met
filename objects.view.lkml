view: objects {
  sql_table_name: the_met.objects ;;

  dimension: object_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.object_id ;;
  }

  dimension: artist_alpha_sort {
    type: string
    sql: ${TABLE}.artist_alpha_sort ;;
  }

  dimension: artist_begin_date {
    type: string
    sql: ${TABLE}.artist_begin_date ;;
  }

  dimension: artist_display_bio {
    type: string
    sql: ${TABLE}.artist_display_bio ;;
  }

  dimension: artist_display_name {
    type: string
    sql: ${TABLE}.artist_display_name ;;
  }

  dimension: artist_end_date {
    type: string
    sql: ${TABLE}.artist_end_date ;;
  }

  dimension: artist_nationality {
    type: string
    sql: ${TABLE}.artist_nationality ;;
  }

  dimension: artist_prefix {
    type: string
    sql: ${TABLE}.artist_prefix ;;
  }

  dimension: artist_role {
    type: string
    sql: ${TABLE}.artist_role ;;
  }

  dimension: artist_suffix {
    type: string
    sql: ${TABLE}.artist_suffix ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: classification {
    type: string
    sql: ${TABLE}.classification ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: credit_line {
    type: string
    sql: ${TABLE}.credit_line ;;
  }

  dimension: culture {
    type: string
    sql: ${TABLE}.culture ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: dimensions {
    type: string
    sql: ${TABLE}.dimensions ;;
  }

  dimension: dynasty {
    type: string
    sql: ${TABLE}.dynasty ;;
  }

  dimension: excavation {
    type: string
    sql: ${TABLE}.excavation ;;
  }

  dimension: geography_type {
    type: string
    sql: ${TABLE}.geography_type ;;
  }

  dimension: is_highlight {
    type: yesno
    sql: ${TABLE}.is_highlight ;;
  }

  dimension: is_public_domain {
    type: yesno
    sql: ${TABLE}.is_public_domain ;;
  }

  dimension: link_resource {
    type: string
    sql: ${TABLE}.link_resource ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: locus {
    type: string
    sql: ${TABLE}.locus ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension_group: metadata {
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
    sql: ${TABLE}.metadata_date ;;
  }

  dimension: object_begin_date {
    type: number
    sql: ${TABLE}.object_begin_date ;;
  }

  dimension: object_date {
    type: string
    sql: ${TABLE}.object_date ;;
  }

  dimension: object_end_date {
    type: number
    sql: ${TABLE}.object_end_date ;;
  }

  dimension: object_name {
    type: string
    sql: ${TABLE}.object_name ;;
  }

  dimension: object_number {
    type: string
    sql: ${TABLE}.object_number ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.period ;;
  }

  dimension: portfolio {
    type: string
    sql: ${TABLE}.portfolio ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: reign {
    type: string
    sql: ${TABLE}.reign ;;
  }

  dimension: repository {
    type: string
    sql: ${TABLE}.repository ;;
  }

  dimension: rights_and_reproduction {
    type: string
    sql: ${TABLE}.rights_and_reproduction ;;
  }

  dimension: river {
    type: string
    sql: ${TABLE}.river ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: subregion {
    type: string
    sql: ${TABLE}.subregion ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [object_id, object_name, artist_display_name, images.count]
  }
}
