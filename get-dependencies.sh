#!/usr/bin/env bash

wget $CERTIFICATE_URL -O cert.p12
wget $PROVISION_URL -O adhoc.mobileprovision