# Mopidy with Jellyfin Plugin Docker Container

[![Build Status](https://dev.azure.com/gallowst/docker/_apis/build/status%2FBuild%20and%20push%20Mopidy?branchName=main)](https://dev.azure.com/gallowst/docker/_build/latest?definitionId=32&branchName=main)

Inspired by this [repo](https://github.com/jjok/my-mopidy-setup) a Dockerised Mopidy client with the Jellyfin plugin.

Reguires an appropriate `mopidy.conf` passing to the container at `/root/.config/mopidy/mopidy.conf`

~~~bash
[jellyfin]
hostname = http://example.jellyfin.net
port = 8096
username = dave 
password = xxxxxxx

[mpd]
enabled = true
hostname = 0.0.0.0
connection_timeout = 300

[core]
cache_dir = /var/cache/mopidy
config_dir = /etc/mopidy
data_dir = /var/lib/mopidy
max_tracklist_length = 10000
restore_state = false

[logging]
verbosity = 0
format = %(levelname)-8s [%(threadName)s] %(name)s %(message)s
color = false
config_file =

[audio]
mixer = software
mixer_volume = 50
output = alsasink device=hw:0,0
buffer_time =

[proxy]
scheme =
hostname =
port =
username =
password =
~~~
