#!/bin/bash

if [ $# != 1 ]; then
                echo "Usage: redeploy.sh <container id>"
        else
            	sudo docker cp $1:/database.db project/database.db
				sudo docker build -t femtoblog project/
				sudo docker run -d -p 80:8080 femtoblog
        fi
