
#!/bin/bash

check_service() {
    systemctl is-active --quiet "$1"

    if [ $? -eq 0 ]; then
        echo "$1 is running"
    else
        echo "$1 is not running"
    fi
}

check_service ssh
check_service nginx
check_service docker
check_service apache
check_service k8s
