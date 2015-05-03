## Update watch number to resolve watch issues when using Gulp + another watch system like Dropbox or Btsync

    sudo sysctl -p
    
Run after editing `max_user_watches`

---

Alternatively

    echo 524288 | sudo tee /proc/sys/fs/inotify/max_user_watches
