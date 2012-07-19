#!/bin/sh

BINURL="http://download.opalang.org/linux/opa_1.0.4%2Bbuild2403_amd64.release.run"

# Installing OPA, first push only
if [ ! -d ~/opa ] ; then
    mkdir ~/opa
    wget $BINURL -O install
    sh install -- ~/opa
fi

# Runscript
mv run ~/

# Install node dependencies
npm install mongodb formidable nodemailer imap

# Compiling the OPA app
~/opa/bin/opa app.opa -o ~/app.js
