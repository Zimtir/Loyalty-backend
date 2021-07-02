#!/bin/bash

echo "Enter an application name: "
read application_name

if [[ $application_name ]]; then
    echo "Creating application with name $application_name..."

    cd .. && cd loyalty/apps

    mix phx.new.web $application_name \
        --database postgres \
        --no-webpack \
        --no-html \
        --no-gettext \
        --no-ecto

    cd ..
else
    echo "Name can't be empty"
fi
