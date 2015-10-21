#!/bin/bash

# Run downloader
php /app/AdobeHDS.php $@

# Make downloaded files readable / writable by all to avoid
# permissions problems because the docker image user is root.
chown -R 1000.1000 /output
chmod -R a+rw /output
