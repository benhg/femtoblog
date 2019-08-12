#!/bin/bash

if [ $# != 1 ]; then
                echo "Usage: redeploy.sh <container id>"
        else
            	sudo docker cp $1:/app/database.db project/database.db
            	sudo docker rm -f $1
            	sudo docker cp rm $1
				sudo docker build -t femtoblog project/
				sudo docker run -d -p 8080:8080 femtoblog
        fi
