#!/bin/bash
cd /opt/demo

# 백그라운드로 스프링 부트 애플리케이션 실행
nohup java -jar demo-0.0.1-SNAPSHOT.jar > app.log 2>&1 &
