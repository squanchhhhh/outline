docker exec outline-postgres-1 pg_dump -U myuser -F c -b -v -f /var/lib/postgresql/data/outline_db_backup.dump outline_db
docker exec outline-postgres-1 pg_dump -U myuser -F c -b -v -f /var/lib/postgresql/data/casdoor_db_backup.dump casdoor_db
docker cp outline-postgres-1:/var/lib/postgresql/data/casdoor_db_backup.dump ./backup/casdoor_db_backup.dump
docker cp outline-postgres-1:/var/lib/postgresql/data/outline_db_backup.dump ./backup/outline_db_backup.dump
tar czf ./backup/minio-backup.tar.gz ./minio/data