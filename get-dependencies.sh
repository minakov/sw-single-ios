#!/usr/bin/env bash

wget $CERTIFICATE_URL -O cert.p12
wget $PROVISION_URL -O adhoc.mobileprovision

if [ ! "$ARCHIVE_LINK" = "" ]
then
  mkdir res && curl -L $ARCHIVE_LINK | tar xzC single/static --strip 1
fi

cp .boto ~/.boto
pip2 install gsutil
