#!/bin/sh

/bin/mkdir $CONFIGURATION_BUILD_DIR/Payload

/bin/cp -R $CONFIGURATION_BUILD_DIR/Acelerometro.app $CONFIGURATION_BUILD_DIR/Payload

/bin/cp carita.png $CONFIGURATION_BUILD_DIR/iTunesArtwork

cd $CONFIGURATION_BUILD_DIR

# zip up the app directory

/usr/bin/zip -r Acelerometro.ipa Payload iTunesArtwork
