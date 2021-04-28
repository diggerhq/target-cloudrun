
resource "google_sql_database" "database" {
  name     = "my-database"
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  name   = "my-database-instance"
  database_version = "POSTGRES_11"
  region = var.region
  settings {
    tier = "db-f1-micro"
  }

  # TODO: Revisit this value
  deletion_protection  = "false"
}