#!/usr/bin/env bash

OPT_DIR=$HOME/opt
FIREFOX_TAR_NAME=firefox-dev-edition.tar.bz2

# firefox developer edition install
curl -o $OPT_DIR/$FIREFOX_TAR_NAME https://download-installer.cdn.mozilla.net/pub/devedition/releases/79.0b6/linux-x86_64/en-US/firefox-79.0b6.tar.bz2
cd $OPT_DIR
tar -xjf $FIREFOX_TAR_NAME
rm $FIREFOX_TAR_NAME

cat > ~/.local/share/applications/firefoxDeveloperEdition.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Firefox Developer Edition
Exec=$HOME/opt/firefox/firefox
Icon=$HOME/opt/firefox/browser/chrome/icons/default/default128.png
Terminal=false
Type=Application
Categories=Network;WebBrowser;Favorite;
MimeType=text/html;text/xml;application/xhtml_xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp; X-Ayatana-Desktop-Shortcuts=NewWindow;NewIncognitos;
EOL
