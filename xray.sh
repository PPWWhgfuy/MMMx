#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ad7e532c-f608-4c6c-bb87-82a45da41157"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

