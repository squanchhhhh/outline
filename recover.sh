docker cp ./backup/casdoor_db_backup.dump outline-postgres-1:/var/lib/postgresql/data/casdoor_db_backup.dump
docker cp ./backup/outline_db_backup.dump outline-postgres-1:/var/lib/postgresql/data/outline_db_backup.dump
docker exec outline-postgres-1 pg_restore -U myuser -d casdoor_db /var/lib/postgresql/data/casdoor_db_backup.dump
docker exec outline-postgres-1 pg_restore -U myuser -d outline_db /var/lib/postgresql/data/outline_db_backup.dump
docker cp ./backup/minio-backup.tar.gz outline-minio-1:/minio-backup.tar.gz
docker exec outline-minio-1 tar xzf /minio-backup.tar.gz -C /minio/data