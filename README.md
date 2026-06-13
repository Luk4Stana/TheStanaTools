# TheStanaTools
A bunch of scripts I wrote to make managing my rooted Android easier. 

## What's inside
- **Fix Permissions**: Quick way to set 644 permissions and fix ownership (root:root) for system files.
- **Log Collector**: Dumps `logcat` and `dmesg` to `/sdcard/StanaLogs/`. Useful when something breaks.
- **Smart Debloater**: Reads a list from `config/bloatware.list` and disables the packages for you.

## How to use
1. Push the `TheStanaTools` folder to your device.
2. Open your terminal (Termux or ADB shell).
3. Navigate to the `bin` folder.
4. Run the main script:
```bash
   sh stanatools.sh
