#!/bin/bash
set -e

echo "Installing wamind."

if ! command -v notify-send &> /dev/null; then
  echo "Error 'notify-send' not found."
fi

mkdir -p ~/.local/bin ~/.config/systemd/user

curl -fsSL https://raw.githubusercontent.com/daxog/wamind/main/src/wamind.sh -o ~/.local/bin/wamind.sh
chmod +x ~/.local/bin/wamind.sh

curl -fsSL https://raw.githubusercontent.com/daxog/wamind/main/src/wamind.service -o ~/.config/systemd/user/wamind.service
curl -fsSL https://raw.githubusercontent.com/daxog/wamind/main/src/wamind.timer -o ~/.config/systemd/user/wamind.timer

systemctl --user enable --now wamind.timer

echo "Finished installing wamind."