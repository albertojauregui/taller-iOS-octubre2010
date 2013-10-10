#!/bin/sh
/bin/mkdir $CONFIGURATION_BUILD_DIR/Payload

/bin/cp -R $CONFIGURATION_BUILD_DIR/Bola.app $CONFIGURATION_BUILD_DIR/Payload

/bin/cp default.png $CONFIGURATION_BUILD_DIR/iTunesArtwork

cd $CONFIGURATION_BUILD_DIR

# zip up the app directory

/usr/bin/zip -r Bola.ipa Payload iTunesArtwork
