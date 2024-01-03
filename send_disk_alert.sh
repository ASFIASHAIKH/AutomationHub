DISK=`df -h / |grep -v Filesystem | awk '{print $5}' |tr -d %`
THRESHOLD="80"
EMAIL_ID="shaikhasfiya12345@gmail.com"

if [[ $DISK -ge $THRESHOLD ]]
then
    echo -e "Disk utilization is high"
    echo -e "Sending email"
    echo -e "Memory usage is above threshold: $DISK" | mail -s "Memory Usage Alert" $EMAIL_ID
else
    echo -e "Disk utilization is below threshold"
fi
