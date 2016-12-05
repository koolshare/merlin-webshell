#! /bin/sh

cp -r /tmp/webshell/* /koolshare/
rm -rf /koolshare/install.sh
rm -rf /tmp/webshell* >/dev/null 2>&1

chmod 755 /koolshare/bin/webshell
chmod 755 /koolshare/scripts/webshell*

dbus remove __event__onwanstart_webshell
