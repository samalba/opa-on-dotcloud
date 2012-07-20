#!/bin/sh

BINURL="http://download.opalang.org/linux/opa_1.0.4%2Bbuild2403_amd64.release.run"

# Installing OPA, first push only
if [ ! -d ~/opa ] ; then
    mkdir ~/opa
    wget $BINURL -O install
    sh install -- ~/opa
    # Install node dependencies
    (cd ~ && npm install mongodb formidable nodemailer imap)
fi

# Runscript
cp run ~/

# Install the code
cp app.opa ~/

# Compiling the OPA app
cd ~ && ./opa/bin/opa app.opa -o app.js
