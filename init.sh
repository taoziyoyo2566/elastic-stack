#!/bin/bash

#privilege
chown -R root:root filebeat_ingest_data
chown -R root:root logstash_ingest_data
chown root:root logstash.conf
chown root:root metricbeat.yml
