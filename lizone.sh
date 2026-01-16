#!/bin/bash

dig -y hmac-sha512:tsig-zonedata-li-public-21-01:t8GgeCn+fhPaj+cRy1epox2Vj4hZ45ax6v3rQCkkfIQNg5fsxuU23QM5mzz+BxJ4kgF/jiQyBDBvL+XWPE6oCQ== @zonedata.switch.ch +noall +answer +noidnout +onesoa AXFR li. > li.txt

grep -P "IN\sNS" li.txt | awk '{print $1}' | sort | uniq > li_uniq.txt

git add li_uniq.txt
git commit -m $(head -1 li.txt | awk '{print $7}')
git push
