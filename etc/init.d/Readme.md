## btsync auto start

http://askubuntu.com/questions/284683/how-to-run-bittorrent-sync

    sudo chmod 755 /etc/init.d/btsync
    sudo update-rc.d btsync defaults
    
Start btsync

    service btsync start
