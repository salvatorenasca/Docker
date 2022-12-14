CONTAINER='prometheus'
BACKUP_NAME='prometheus-backup.tar'
docker run --rm --volumes-from "${CONTAINER}" -v $(pwd):/backup alpine:3.8 tar xvf "/backup/${BACKUP_NAME}"
