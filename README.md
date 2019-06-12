# ccktools
## WSL Tools.
## AUTOINSTALL WSL + APACHE + MYSQL + COMPOSER + DRUSH + CCKTOOLS FOR LOCAL DEV

Install [Ubuntu App](https://www.microsoft.com/es-es/p/ubuntu-1804-lts/9n9tngvndl3q#activetab=pivot:overviewtab) and launch:

    Set user "user"

    Set password "user"


### Run without sudo
```
sudo visudo
```
```
user ALL=(ALL) NOPASSWD:ALL
```

### Setup
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/carcheky/ccktools/master/bin/wsl-setup?$(date +%s))"
```


#### Troubleshooting
##### - add to: /etc/apache2/apache2.conf

```
Servername localhost
AcceptFilter http none
AcceptFilter https none

<Directory /c/wsl/sites>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
</Directory>
```

##### - add php priority in /etc/apache2/mods-available/dir.conf

```
<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
```

a