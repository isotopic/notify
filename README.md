# Notify
Dispatch OSX notifications from bash scripts.

## Install
```sh
$ cd /usr/local
$ git clone https://github.com/isotopic/notify.git
$ chmod u+x nofity/notify.sh
$ ln -s notify/notify.sh /usr/local/bin/notify
```

## Direct call:
```sh
$ notify "It's time to do that thing!"
```

## Cronjob example:
```sh
$ crontab -e
```

Add a task to run everyday at 4:20 pm:
```sh
20 16 * * * notify "Stop what you're doing and do that other thing instead!"
```

### Notes
By default, Apple script notifications are automatically dismissed after some seconds.
In order to keep them on until you dismiss them manually, set 'Alerts' in:
`System Preferences > Notifications > Script Editor > Script Editor alert style: Alerts`
