# flaresolverr-tak
[![flaresolverr-tak](https://snapcraft.io/flaresolverr-tak/badge.svg)](https://snapcraft.io/flaresolverr-tak)
![snap arch](https://badgen.net/snapcraft/architecture/flaresolverr-tak)
![snap size](https://badgen.net/snapcraft/size/flaresolverr-tak/amd64/stable)

## Snap Description
UnOfficial release of FlareSolverr\
https://snapcraft.io/flaresolverr-tak

## FlareSolverr Description
<img src="/icon.svg" width="100">
FlareSolverr is a proxy server to bypass Cloudflare and DDoS-GUARD protection.

See https://github.com/FlareSolverr/FlareSolverr for more details.

## Information
The API service is accessible by default at http://localhost:8191

FlareSolverr Release\
'mesa-2404' snap is required as dependency.\
Service is restarted on any condition.

Post install command to check if service is running well and responses:
```
sudo snap logs flaresolverr-tak
```

Hosts with limited resources might need to increase timeout (Check with 90s).
  
This snap embeds Chromium binaries from Chromium snap as external executables cannot be called from a Snap and Ubuntu does not provides Chromium's packages ('chromium-desktop' package is a symlink to Chromium snap).\
Thus it has quite an important size for the service it provides.\
Thus it is limited to Chromium snap's available architectures for now, built on same core.

## FAQ
See my common doc about [FAQ](https://github.com/TehAppKiller/Snapcraft-common-doc/tree/main#FAQ).

## Building
See my common doc about [building a snap](https://github.com/TehAppKiller/Snapcraft-common-doc/tree/main#Building).

## Versionning
See my common doc about [versionning](https://github.com/TehAppKiller/Snapcraft-common-doc/tree/main#Versionning).
