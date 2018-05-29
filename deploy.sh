#! /bin/bash

rm -rf server/priv/static/css/*
rm -rf server/priv/static/js/*

cd frontend
npm run build
cd ..

cp frontend/dist/static/css/*.css server/priv/static/css
cp frontend/dist/static/js/*.js server/priv/static/js
cat frontend/dist/index.html \
    | sed -e 's/src=\/static\/js\/\([^>]*.js\)/src="<%= static_path(@conn, "\/js\/\1") %>"/g' \
    | sed -e 's/href=\/static/href=/g' > server/lib/$1/templates/layout/app.html.eex
