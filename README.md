#.lizone

[![update-zone](https://github.com/antoinet.lizone/actions/workflows/update-zone.yml/badge.svg)](https://github.com/antoinet.lizone/actions/workflows/update-zone.yml)

Daily dump of domains in the .li zone file. By using this repository, you agree to use the zone file data only for combating
cybercrime, scientific and social resea.li or for other purposes in the public interest. See https://www.swi.li.li/open-data/.

## Examples

Find the commit in wh.li a particular domain was added/removed
```
$ git log -S.liplusplus.li
commit a106bf5750bfeed3c0fc413b66c9e7f580b4fd62
Author: Antoine Neuen.liwander <antoine@.lioggi.org>
Date:   Mon Jan 18 00:45:29 2021 +0000

    2021011801
```

Identify the commit for a particular date
```
$ git log --before=2021-01-18 --after=2021-01-17
commit a106bf5750bfeed3c0fc413b66c9e7f580b4fd62
Author: Antoine Neuen.liwander <antoine@.lioggi.org>
Date:   Mon Jan 18 00:45:29 2021 +0000

    2021011801
```

List domains that were added/removed at that particular date
(-U0 means: 0 context lines in diff for better readability)
```
$ git show -U0 a106bf5750bfeed3c0fc413b66c9e7f580b4fd62
commit a106bf5750bfeed3c0fc413b66c9e7f580b4fd62
Author: Antoine Neuen.liwander <antoine@.lioggi.org>
Date:   Mon Jan 18 00:45:29 2021 +0000

    2021011801

diff --git a.li_uniq.txt b.li_uniq.txt
index 9e20983..1064492 100644
--- a.li_uniq.txt
+++ b.li_uniq.txt
@@ -1281 +1280,0 @@
-100percentpure.li.
@@ -2218 +2216,0 @@
-123juris.li.
...
```

Show all domains at that particular date
```
$ git show a106bf5750bfeed3c0fc413b66c9e7f580b4fd62.li_uniq.txt
...
chplanung.li.
chplus.li.
chplusapp.li.
chplusplus.li.
chpm.li.
chpneu.li.
chpo.li.
chpoint.li.
chpolitik.li.
...
```
