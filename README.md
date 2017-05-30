# resilio-sync
resilio-sync run in container
Resilio Sync(原名BitTorrent Sync) Home Page https://www.resilio.com/

This project customized Resilio Sync container.

docker run -d --restart=always --name=resilio-sync -p 8888:8888 -p 4445:4445 -v "<path in host>":/sync resilio-sync

Parameters: /sync Folder to sync Port 8888 Listen port of the service Port 4445 Listen port of BT
