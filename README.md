# Battery.Monitor
How to use:
1. Change user to the username using the script
2. You can use this one of two ways, with cron or with watch, I'll list how to add it to cron and how to use it with watch below.

Command to add to cron:
(sudo crontab -l 2>/dev/null; echo "*/5 * * * * bash /path-to-script/battery_warning.sh") | sudo crontab -
This will check the battery status every 5 minutes, you can change the frequncey, replace the path to battery_warning.sh

Command to use with watch:
watch -n 300 bash /path-to-script/battery_warning.sh
This will check the battery status every 5 minutes, you can change the frequncey, replace the path to battery_warning.sh

There is a secondary timer in the script you can use if you want, you can use sleep insteady of -n 300 with watch.
