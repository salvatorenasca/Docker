CONTAINER='prometheus'
DIR_TO_BACKUP='/prometheus'
BACKUP_NAME='prometheus-backup.tar'
docker run --rm --volumes-from "${CONTAINER}" -v $(pwd):/backup alpine:3.8 tar cvf "/backup/${BACKUP_NAME}" "${DIR_TO_BACKUP}"

