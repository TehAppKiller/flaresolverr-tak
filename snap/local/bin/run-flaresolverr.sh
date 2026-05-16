#!/bin/bash -e

# Fix Chromedriver detection (avoid undetected-chromedriver_x64 to DL different version, especially for none-x64 arch)
#if [ ! -f $SNAP_USER_DATA/.local/share/chromedriver ]; then
	echo "Fix ChromeDriver detection..."
    cp $SNAP/usr/lib/chromium-browser/chromedriver $SNAP_USER_DATA/.local/share/chromedriver
#fi

cd $SNAP/Flaresolverr
python3 flaresolverr.py
