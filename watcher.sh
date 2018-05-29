#! /bin/bash
./deploy.sh $1
npx chokidar "frontend/src/**/*.*" -c "./deploy.sh $1"
