# Notify
Quick and dirty way to dispatch OSX notifications from bash scripts and cronjobs.

## Direct call examples:
```sh
$ notify "Title"
$ notify "Title" "Message here"
```

## Install
```sh
$ cd /usr/local
$ git clone https://github.com/isotopic/notify.git
$ chmod u+x notify/notify.sh
$ ln -s /usr/local/notify/notify.sh /usr/local/bin/notify
```
> You may need to chown this directory with `$ sudo chown YOURUSERNAME notify`

## Cronjob usage example:
```sh
$ crontab -e
20 16 * * * /usr/local/bin/notify "Hey!" "Stop what you're doing and do that other thing instead"
```
> Note: Cron has a limited set of env vars so we have to pass the absolute path to the script.

### Notes
> By default, Apple script notifications are automatically dismissed after some seconds.
> In order to keep them on until you dismiss them manually, set 'Alerts' in:
>
> `System Preferences > Notifications > Script Editor > Script Editor alert style: Alerts`

### Todo
- Correctly escape special characters like exclamation marks.