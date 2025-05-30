#!/bin/bash
set -e

echo "Uninstalling wamind."

systemctl --user stop wamind.timer
systemctl --user disable wamind.timer

rm -f ~/.local/bin/wamind.sh
rm -f ~/.config/systemd/user/wamind.service
rm -f ~/.config/systemd/user/wamind.timer

systemctl --user daemon-reload

echo "Uninstalled wamind."