#!/bin/bash

USER_ID=${LOCAL_UID:-9001}
GROUP_ID=${LOCAL_GID:-9001}
USER_NAME=${LOCAL_NAME}

echo "Starting with UID : $USER_ID, GID: $GROUP_ID, NAME: $USER_NAME"
useradd -u $USER_ID -o -m $USER_NAME
groupmod -g $GROUP_ID $USER_NAME
export HOME=/workspace
usermod -aG sudo $USER_NAME
echo "$USER_NAME:1111" | sudo chpasswd
echo 'Defaults visiblepw' >> /etc/sudoers
echo "$USER_NAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

exec /usr/sbin/gosu $USER_NAME "$@"
