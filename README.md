# choco-windump
Install WinDump and WinPcap via Chocolatey

Because there is no silent installer of WinDump and WinPcap, it's difficult to automate their installation. Especially on Windows Server Core where no GUI is availble, even manual installation is not possible. 

This project is to address those issues by adopting Chocolatey. Please note that only 64bit Vista+ Windows operation systems are supported. 

```
# All commands below need to be executed in the elevated mode
# To build the package
choco pack

# To install the package locally, download the source code and then run
choco install choco-windump -s .

# To install the package from Chocolatey repository, simply run
choco install choco-windump --version 1.0

# To remove the package
choco uninstall choco-windump
```
