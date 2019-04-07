# ccktools
WSL Tools. Only for me.

1.   Install [Ubuntu App](https://www.microsoft.com/es-es/p/ubuntu-1804-lts/9n9tngvndl3q#activetab=pivot:overviewtab)
2.   Launch ubuntu app
3.   Set user "user"
4.   Set password "user"
5.   Run ```sudo visudo``` & add ```user ALL=(ALL) NOPASSWD:ALL``` & save
6.   run:
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/carcheky/ccktools/master/bin/wsl-update)"
```
