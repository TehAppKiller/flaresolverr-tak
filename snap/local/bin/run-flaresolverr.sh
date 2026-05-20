#!/bin/bash -e

# Fix Chromedriver detection (avoid undetected-chromedriver_x64 to DL different version, especially for none-x64 arch)
echo "Fix ChromeDriver detection..."
mkdir -p $SNAP_USER_DATA/.local/share
cp $SNAP/usr/lib/chromium-browser/chromedriver $SNAP_USER_DATA/.local/share/chromedriver
# Remove unwanted previously stored DL'd chromedriver (not required by fresh install)
rm -rf $SNAP_USER_DATA/.local/share/chromedriver/undetected_chromedriver

echo "Launching Flaresolverr..."
cd $SNAP/Flaresolverr
python3 flaresolverr.py
