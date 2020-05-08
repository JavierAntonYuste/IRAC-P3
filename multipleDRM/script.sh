#!/bin/bash

command=./../../../Bento4-SDK-1-6-0-632.x86_64-unknown-linux/Bento4-SDK-1-6-0-632.x86_64-unknown-linux/bin/mp4dash
widevineheader="#EhCetAUN5EtIApMuJ9dQg+JmSOPclZsG"
playreadyheader="LA_URL:http://test.playready.microsoft.com/service/rightsmanager.asmx?cfg=(persist:false,sl:150)"
KID=9eb4050de44b4802932e27d75083e266
KEY=166634c675823c235a4a9446fad52e4d

rm -rf output/

$command --widevine-header $widevineheader --playready-header $playreadyheader --encryption-key=$KID:$KEY \
calidadbajafrag.mp4 calidadmediafrag.mp4 calidadaltafrag.mp4


python -m SimpleHTTPServer 8000
