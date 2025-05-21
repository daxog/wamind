#!/bin/bash
set -e

echo "Uninstalling wamind"

systemctl --user stop wamind.timer
systemctl --user disable wamind.timer

sudo rm -f /usr/local/bin/wamind.sh
sudo rm -f /etc/systemd/user/wamind.{service,timer}

systemctl --user daemon-reload

echo "Uninstalled wamind"