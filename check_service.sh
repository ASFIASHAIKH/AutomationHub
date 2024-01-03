read -p "Enter your service name:" SERVICE_NAME
IS_ACTIVE=`systemctl is-active $SERVICE_NAME` 

if [[ $IS_ACTIVE == "active" ]]
then 
    echo -e "Service $SERVICE_NAME is running"
else
    echo -e "Service $SERVICE_NAME is not running...!" 
    echo -e "Starting the $SERVICE_NAME"
    systemctl restart  $SERVICE_NAME
fi 
