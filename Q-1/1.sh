#Write a script that accept one argument, if the argument starts with start then it should print starting applications then second as stop it should print stop application , third one is about status that should print it is running and other application invalid  

#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 {start|stop|status}"
    exit 1
fi

case "$1" in
    start)
        echo "Starting application..."
        ;;
    stop)
        echo "Stopping application..."
        ;;
    status)
        echo "Application is running"
        ;;
    *)
        echo "Invalid argument. Use start, stop, or status..."
        ;;
esac
