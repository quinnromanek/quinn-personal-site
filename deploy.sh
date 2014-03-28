#!/bin/bash

jekyll build --destination $1 --config _config/_config.yml,_config/_projects_config.yml,_config/_flashgames_config.yml
