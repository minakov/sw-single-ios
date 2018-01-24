#!/usr/bin/env bash

wget $CERTIFICATE_URL -O cert.p12
wget $PROVISION_URL -O adhoc.mobileprovision

pip2 install gsutil
gsutil cp get-dependencies.sh gs://sw-lobby.appspot.com