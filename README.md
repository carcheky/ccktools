# ccktools


1-  [Download Distro](https://drive.google.com/open?id=1Uw5rjVzwM7xooR1Juyr_EHQdHPPZbEzP)
2-  Clone this repo to C:/wsl/user/ccktools/ ( C:/wsl/user/ccktools/.git) [as here](https://raw.githubusercontent.com/carcheky/ccktools/master/img/folders.png)


Recomended:
-  [to add hosts to windows](http://www.abelhadigital.com/hostsman/)
-  [a modern terminal](https://github.com/Maximus5/ConEmu/releases/latest/)
-  [to manage databases](https://www.heidisql.com/)
-  [to list sites installed](https://github.com/carcheky/home-lamp)



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




        echo "

        $settings['config_sync_directory'] = '../config/sync';
        $settings['file_private_path'] = 'sites/default/private';
        $settings['file_public_path'] = 'sites/default/files';
        $settings['file_temp_path'] = '/tmp';
        $settings['file_chmod_directory'] = 0775;
        $settings['file_chmod_file'] = 0664;


        " >>${CONF_SITE_FOLDER}/web/sites/default/settings.php
