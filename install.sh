#!/bin/bash
if [ "$EUID" -ne 0 ]; then
  echo "Please run with sudo or as root."
  exit 1
fi
SOURCE_FOLDER="./MPADTE"
TARGET_DIR="/usr/local/share/mpadte"
LAUNCHER="/usr/local/bin/mpadte"
if [ ! -d "$SOURCE_FOLDER" ]; then
  echo "Error: $SOURCE_FOLDER not found."
  exit 1
fi
cp -r "$SOURCE_FOLDER" "$TARGET_DIR"
echo '#!/bin/bash' > "$LAUNCHER"
echo "\"$TARGET_DIR/mpadt\" \"\$@\"" >> "$LAUNCHER"
chmod +x "$LAUNCHER"
echo "Installed mpadte to $TARGET_DIR"
echo "You can now use it by running: mpadte <file.mpadt>"
