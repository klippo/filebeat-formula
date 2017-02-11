# filebeat formula
Install and configure filebeat 5+.

See the full [Salt Formulas installation and usage instructions](http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html).

## Available states

* filebeat.install
* filebeat.config
* filebeat.service

## filebeat.install

Installs the filebeat package.

## filebeat.config

configures filebeat, and installs rc levels for startup on reboot.

### Usage

See pillar.example for example configuration.

### Overriding defaults

This formula puts some system specific configuration in _map.jinja_. the may be overridden in your pillar data like so:
```
filebeat:
  lookup:
    config_source: salt://mycustom/filebeat/filebeat.jinja
```

## filebeat.service

Starts the filebeat service. 

Testing
=======

Testing is done with [Test Kitchen](http://kitchen.ci/)
for machine setup and [testinfra](https://testinfra.readthedocs.io/en/latest/)
for integration tests.

Requirements
------------

* Python
* Ruby
* Docker

    pip install -r requirements.txt
    gem install bundler
    bundle install
    bundle exec kitchen test
