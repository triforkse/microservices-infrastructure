## Logstash

[Logstash](http://logstash.net) role for deploying and managing Logstash 1.5 with Docker and systemd.

## Variables

You can use these variables to customize your Logstash installations.

| var | description | default |
|-----|-------------|---------|
|`logstash_output_stdout`|a simple print to STDOUT|yes|
|`logstash_output_logentries`|forward logs to [logentries](https://logentries.com/)|no|
|`logstash_logentries_token`|unique token provided by logentries|no|
