#!/bin/bash
if [ "$EUID" -ne 0 ]; then
  echo "Please run with sudo or as root."
  exit 1
fi
SOURCE_FOLDER="./PADLI"
TARGET_DIR="/usr/local/share/padli"
LAUNCHER="/usr/local/bin/padli"
if [ ! -d "$SOURCE_FOLDER" ]; then
  echo "Error: $SOURCE_FOLDER not found."
  exit 1
fi
cp -r "$SOURCE_FOLDER" "$TARGET_DIR"
echo '#!/bin/bash' > "$LAUNCHER"
echo "\"$TARGET_DIR/padl\" \"\$@\"" >> "$LAUNCHER"
chmod +x "$LAUNCHER"
echo "Installed padli to $TARGET_DIR"
echo "You can now use it by running: padli <file.padl>"
