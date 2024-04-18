
# 🌟 README for 33vision Ad Manager 🌟

## 🚀 Introduction

33vision Ad Manager is designed specifically for Raspberry Pi devices to automate the management and update of video advertisements on in-store display screens. This tool ensures that content is always fresh and displayed efficiently by monitoring the system in real-time and automatically cleaning up unnecessary hidden files.

## 🔧 Requirements

- **Hardware**: Raspberry Pi (Raspberry Pi 3 or newer recommended)
- **Operating System**: Raspberry Pi OS (latest version)
- **Software**:
  - `inotify-tools` (for file system event monitoring)
  - `eom` (Eye of MATE, for image display)

## 🛠 Installation Steps

1. **Update your Raspberry Pi**:
   ```bash
   sudo apt-get update
   sudo apt-get upgrade
   ```

2. **Install required software**:
   ```bash
   sudo apt-get install inotify-tools eom
   ```

## 📝 Usage

1. **Download the project**:
   Clone the repository to your Raspberry Pi:
   ```bash
   git clone https://github.com/yourusername/33vision-ad-manager.git
   ```

2. **Run the script**:
   Navigate to the project directory and run the main script:
   ```bash
   cd 33vision
   chmod +x start-eom.sh
   ./start-eom.sh
   ```

   This script will initiate the advertisement slideshow and monitor the designated folder `/home/gaolu/tv/TVImages` for any unnecessary hidden files, automatically cleaning them up.

## 💡 Notes

- Ensure the `WATCH_DIR` path is correctly set to match your file storage directory.
- The script needs to be run on a Raspberry Pi OS with a graphical interface.

## 🌟 Contributing

Contributions are welcome! You can help improve the project by:

- Submitting bug reports and feature requests
- Submitting Pull Requests to improve code or documentation

---

Hope this README helps you successfully deploy and run the 33vision Ad Manager, making your in-store video display management more efficient and dynamic! 🎉
