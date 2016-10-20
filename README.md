# Notify
Quick and dirty way to dispatch OSX notifications from bash scripts and cronjobs.

## Install
```sh
$ cd /usr/local
$ git clone https://github.com/isotopic/notify.git
$ chmod u+x notify/notify.sh
$ ln -s /usr/local/notify/notify.sh /usr/local/bin/notify
```
> You may need to chown this directory `sudo chown YOURUSERNAME notify`

## Direct call:
```sh
$ notify "Hello world"
```

## Cronjob example:
```sh
$ crontab -e
```

Add a task to run everyday at 4:20 pm:
```sh
20 16 * * * /usr/local/bin/notify "Stop what you're doing and do that other thing instead"
```
> Cron has a limited set of env vars so we have to pass the absolute path to the script.

### Notes
> By default, Apple script notifications are automatically dismissed after some seconds.
> In order to keep them on until you dismiss them manually, set 'Alerts' in:
>
> `System Preferences > Notifications > Script Editor > Script Editor alert style: Alerts`

### Todo
- Correctly escape special characters like exclamation marks.

