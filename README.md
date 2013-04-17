
Running package.sh will download logstash 1.1.10, and package it into a .deb file. Look at package.sh if you want to do it manually.

This will install logstash init scripts and sample config. For a quick test to see if it's working, try starting logstash and access the web interface on port 9292 after it's done spinning up.

At this point, you probably want to optimize ElasticSearch to minimize storage footprint, depending on your setup.
https://github.com/logstash/logstash/wiki/Elasticsearch-Storage-Optimization

Also, you probably want to install Kibana as a web frontend, which is due to replace the default web interface in logstash core at a later time.
http://kibana.org/
