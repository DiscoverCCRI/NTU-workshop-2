#!/bin/bash

# NOTE: These paths could be cleaned up if we set up a 'working directory' in the cronjob.
/usr/bin/python3 /sdi_12_data_collector.py cfg:/soil-data-collect.conf >> /var/log/cron.log 2>&1