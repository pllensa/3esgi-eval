#!/usr/bin/env bash

# a faire par logrotate et cron
find $(pwd) -name change-droit.log -mtime +7 -exec cat change-droit.log >> change-droit.archive.log && cat "" > change-droit.log

