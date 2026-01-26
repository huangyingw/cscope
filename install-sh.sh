#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# 强制在 ARM64 模式下运行（Apple Silicon 原生）
if [[ $(uname -m) != "arm64" ]] && [[ $(uname) == "Darwin" ]]; then
    echo "切换到 ARM64 模式运行..."
    exec arch -arm64 /bin/zsh "$0" "$@"
fi

./build_prerequisite.sh
./build.sh
git checkout config.h.in || true
