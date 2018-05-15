view: images {
  sql_table_name: the_met.images ;;

  dimension: caption {
    type: string
    sql: ${TABLE}.caption ;;
  }

  dimension: gcs_url {
    type: string
    sql: ${TABLE}.gcs_url ;;
  }

  dimension: is_oasc {
    type: yesno
    sql: ${TABLE}.is_oasc ;;
  }

  dimension: object_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.object_id ;;
  }



  dimension: original_image_url {
    type: string
    sql: ${TABLE}.original_image_url ;;
    link: {
      label: "Image"
      url: "{{ value }}"
    }
  }

  dimension: url_image {
    sql: ${original_image_url}image};;
    html: <img src="{{ value }}" width="100" height="100"/>;;
  }

  dimension: public_caption {
    type: string
    sql: ${TABLE}.public_caption ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [objects.object_name, objects.artist_display_name, objects.object_id]
  }
}
