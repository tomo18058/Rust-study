#!/usr/bin/env bash
set -e

source /usr/share/GNUstep/Makefiles/GNUstep.sh
rm -rf build
mkdir -p build
OBJC_INC="$(gcc -print-file-name=include)"

clang `gnustep-config --objc-flags` -I"$OBJC_INC" \
src/main.m src/basics/*.m \
-o build/compare_objc \
`gnustep-config --base-libs`

echo "build ok: ./build/compare_objc --list"
