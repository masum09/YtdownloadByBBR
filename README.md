# YtdownloadByBBR

# 🎥 Termux YouTube Downloader

A simple YouTube downloader for Termux using `yt-dlp`.  
Automatically installs dependencies and lets you choose a folder for downloads (saved for future use).

---

## 📌 Installation
```bash
git clone https://github.com/YourUsername/YT-Downloader-Termux.git
cd YT-Downloader-Termux
chmod +x yt-downloader.sh
```

---

## 🚀 Usage
```bash
bash yt-downloader.sh "YouTube-URL"
```

- First time: Asks where to save videos (e.g., `/sdcard/Download/YT`)  
- Next time: Uses same folder automatically ✅  

---

## 📂 Example
```bash
bash yt-downloader.sh "https://www.youtube.com/watch?v=abcd1234"
```

---

## ⚠️ Notes
- Give storage access in Termux before running:
```bash
termux-setup-storage
```
- Videos will be saved in the folder you select.
- 

# Update README.md with installation requirements and commands

readme_updated = """# 🎥 Termux YouTube Downloader

A simple YouTube downloader for Termux using `yt-dlp`.  
Automatically installs dependencies and lets you choose a folder for downloads (saved for future use).

---

## 📌 Requirements (First Time Setup)
Before running, make sure you allow Termux to access storage and install required packages.

```bash
# Allow storage access
termux-setup-storage

# Update and install required packages
pkg update -y
pkg install -y python ffmpeg curl git

# Upgrade pip and install yt-dlp
pip install --upgrade pip
pip install yt-dlp
