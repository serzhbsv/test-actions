#!/bin/bash

curl https://rclone.org/install.sh | sudo bash


mkdir drive1 drive2

echo "#!/bin/bash
rclone mount --config=rclone.conf gdrive-1: drive1/ > /dev/null &
rclone mount --config=rclone.conf gdrive-2: drive2/ > /dev/null &" >> mount.sh
chmod +x mount.sh