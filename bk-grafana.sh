CONTAINER='grafana'
DIR_TO_BACKUP='/var/lib/grafana'
BACKUP_NAME='grafana-backup.tar'
docker run --rm --volumes-from "${CONTAINER}" -v $(pwd):/backup alpine:3.8 tar cvf "/backup/${BACKUP_NAME}" "${DIR_TO_BACKUP}"
