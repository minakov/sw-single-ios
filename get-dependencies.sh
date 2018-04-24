#!/usr/bin/env bash

wget $CERTIFICATE_URL -O cert.p12
wget $PROVISION_URL -O adhoc.mobileprovision

echo "$ARCHIVE_LINK"
if [ ! "$ARCHIVE_LINK" = "" ]
then
  mkdir res && curl -L $ARCHIVE_LINK | tar xzC res --strip 1
fi

cp .boto ~/.boto
pip2 install gsutil
