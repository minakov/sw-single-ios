#!/usr/bin/env bash

gsutil cp single.ipa gs://sw-lobby.appspot.com/apps/${ACCOUNT_ID}/${APP_ID}/${BRANCH_ID}/${BUILD_ID}.ipa
