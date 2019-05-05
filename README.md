# ccktools
## WSL Tools. Only for me.

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

### Update:
```
sudo apt update && sudo apt upgrade -y
```

### Setup
```
bash -c "$(curl -fsSL -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/carcheky/ccktools/master/bin/wsl-update)"
```
or
```
bash -c "$(curl -fsSL -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/carcheky/ccktools/master/bin/wsl-setup)"
```
