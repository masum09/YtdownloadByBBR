#!/bin/bash
# Termux YouTube Downloader with Config Save

CONFIG=~/.yt_downloader.conf

# Step 1: Install dependencies if not installed
echo "🚀 Checking & installing dependencies..."
pkg update -y
pkg install -y python ffmpeg curl git -y
pip install --upgrade pip
pip install yt-dlp

# Step 2: Check if URL is given
if [ -z "$1" ]; then
    echo "❌ Usage: bash yt-downloader.sh <YouTube-URL>"
    exit 1
fi
URL=$1

# Step 3: Check config file for folder
if [ -f "$CONFIG" ]; then
    FOLDER=$(cat "$CONFIG")
else
    echo -n "📂 Enter download folder path (default: ~/Downloads/YT): "
    read FOLDER
    [ -z "$FOLDER" ] && FOLDER=~/Downloads/YT
    mkdir -p "$FOLDER"
    echo "$FOLDER" > "$CONFIG"
fi

# Step 4: Download video
echo "⬇️ Downloading into: $FOLDER"
yt-dlp -o "$FOLDER/%(title)s.%(ext)s" "$URL"

echo "✅ Download complete! Saved in: $FOLDER"
