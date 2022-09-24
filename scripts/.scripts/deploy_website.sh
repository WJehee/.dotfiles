HOST=server
DIR=/var/www/wouterjehee/

hugo && rsync -avz --delete public/ ${HOST}:${DIR}
