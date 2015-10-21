Adobe HDS Downloader Docker Image
=================================

This repository contains instructions to build a Docker image able to
run [K-S-V](https://github.com/K-S-V/)'s
[AdobeHDS](https://github.com/K-S-V/Scripts/blob/master/AdobeHDS.php) script.

This script can read `.f4m` manifests and download video streams in
chunks and assemble them into a single file.

To run the script:

```
docker run -v `pwd`/video:/output giorgos/hds-downloader --delete --manifest <MANIFEST_URL>
```

E.g.
```
docker run -v `pwd`/video:/output giorgos/hds-downloader --delete --manifest  "http://antennatvvod-vh.akamaihd.net/z/vods1/,c8e81912-517d-448c-bfe8-c083d7ef8819,.mp4.csmil/manifest.f4m?g=IMEQTLFUJHZE&hdcore=3.8.0&plugin=jwplayer-3.8.0.0"
```

will save in *video* directory on the host the stream manifested by the URL.
