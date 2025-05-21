#!/bin/bash
set -e

echo "Installing wamind"

mkdir -p ~/.local/bin ~/.config/systemd/user

install -Dm755 src/wamind.sh ~/.local/bin/wamind.sh

install -Dm644 src/wamind.service ~/.config/systemd/user/
install -Dm644 src/wamind.timer ~/.config/systemd/user/

systemctl --user enable --now wamind.timer

echo "Finished installing wamind"