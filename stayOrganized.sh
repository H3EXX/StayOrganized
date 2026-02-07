#!/bin/bash

# Ask type of work
echo "What are you working on?"
echo "1) CTF / Lab Machine"
echo "2) Client / Company Project"
read -rp "Enter choice (1 or 2): " WORK_TYPE

case $WORK_TYPE in
    1)
        BASE_DIR="$HOME/Machines"
        TYPE_NAME="Machine"
        ;;
    2)
        BASE_DIR="$HOME/Projects"
        TYPE_NAME="Project"
        ;;
    *)
        echo "❌ Invalid choice. Please run again and select 1 or 2."
        exit 1
        ;;
esac

# Ask for name
read -rp "Enter $TYPE_NAME name: " NAME
NAME=$(echo "$NAME" | xargs)

if [[ -z "$NAME" ]]; then
    echo "❌ Name cannot be empty."
    exit 1
fi

TARGET="$BASE_DIR/$NAME"

# Create directory structure
mkdir -p \
"$TARGET/EPT/evidence/credentials" \
"$TARGET/EPT/evidence/data" \
"$TARGET/EPT/evidence/screenshots" \
"$TARGET/EPT/logs" \
"$TARGET/EPT/scans" \
"$TARGET/EPT/scope" \
"$TARGET/EPT/tools" \
"$TARGET/IPT/evidence/credentials" \
"$TARGET/IPT/evidence/data" \
"$TARGET/IPT/evidence/screenshots" \
"$TARGET/IPT/logs" \
"$TARGET/IPT/scans" \
"$TARGET/IPT/scope" \
"$TARGET/IPT/tools"

echo "✅ $TYPE_NAME workspace created successfully!"
echo "📁 Location: $TARGET"
