#! /bin/bash
npx chokidar "frontend/src/**/*.*" -c "./deploy.sh $1"
