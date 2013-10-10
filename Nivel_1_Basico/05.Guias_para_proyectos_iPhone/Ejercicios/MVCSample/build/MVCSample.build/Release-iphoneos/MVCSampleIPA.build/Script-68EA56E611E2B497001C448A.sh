#!/bin/sh
/bin/mkdir "$CONFIGURATION_BUILD_DIR"/Payload
/bin/cp -R "$CONFIGURATION_BUILD_DIR"/MVCSample.app "$CONFIGURATION_BUILD_DIR"/Payload
/bin/cp Icon.png "$CONFIGURATION_BUILD_DIR"/iTunesArtwork
cd "$CONFIGURATION_BUILD_DIR"
# zip up the app directory
/usr/bin/zip -r MVCSample.ipa Payload iTunesArtwork
