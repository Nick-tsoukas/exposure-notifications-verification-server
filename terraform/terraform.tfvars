project = "covidtrace-reference"

database_tier            = "db-custom-2-7680"
database_disk_size_gb    = 16
database_max_connections = 1024

redis_cache_size = 1

service_environment = {
  "adminapi": {
    "CERTIFICATE_ISSUER": "gov.nv.dhhs",
    "OBSERVABILITY_EXPORTER": "STACKDRIVER",
    "DB_DEBUG": "true"
  },
  "apiserver": {
    "CERTIFICATE_ISSUER": "gov.nv.dhhs",
    "OBSERVABILITY_EXPORTER": "STACKDRIVER",
    "DB_DEBUG": "true"
  },
  "server": {
    "CERTIFICATE_ISSUER": "gov.nv.dhhs",
    "DB_DEBUG": "true"
  },
  "cleanup": {
    "DB_DEBUG": "true"
  },
}
