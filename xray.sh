#!/bin/sh
if [ ! -f UUID ]; then
  UUID="94d7004d-a19a-4962-940b-e67a95625472"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

