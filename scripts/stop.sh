#!/bin/bash

# demo-0.0.1-SNAPSHOT.jar 프로세스를 찾아서 종료
PID=$(ps -ef | grep demo-0.0.1-SNAPSHOT.jar | grep -v grep | awk '{print $2}')

if [ -n "$PID" ]; then
  echo "Stopping application with PID: $PID"
  kill $PID
  sleep 5
else
  echo "Application not running"
fi
