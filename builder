#!/bin/sh

BINURL="http://download.opalang.org/linux/opa_1.0.2%2Bbuild2276_amd64.release.run"

# Installing OPA, first push only
if [ ! -d ~/opa ] ; then
    mkdir ~/opa
    wget $BINURL -O install
    sh install -- ~/opa
fi

# Runscript
mv run ~/

# Compiling the OPA app
~/opa/bin/opa app.opa -o ~/app.js
