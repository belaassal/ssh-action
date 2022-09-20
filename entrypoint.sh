#!/bin/sh -l

#set -e at the top of your script will make the script exit with an error whenever an error occurs (and is not explicitly handled)
set -eu

echo -e "${INPUT_KEY}" >TMP_PRIVATE_KEY_FILE

# avoid Permissions too open
chmod 600 TMP_PRIVATE_KEY_FILE

echo '---- Start : execute commande ----'

ssh -o StrictHostKeyChecking=no -p "${INPUT_PORT}" -v -i TMP_PRIVATE_KEY_FILE "${INPUT_USER}"@"${INPUT_HOST}"  "${INPUT_REMOTEDIR}"

echo '---- FINISH : commande executed ----'

exit 0
