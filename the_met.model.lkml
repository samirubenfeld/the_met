connection: "google_bigquery_test_db"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: the_met_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: the_met_default_datagroup

explore: images {
  join: objects {
    type: left_outer
    sql_on: ${images.object_id} = ${objects.object_id} ;;
    relationship: many_to_one
  }
}
