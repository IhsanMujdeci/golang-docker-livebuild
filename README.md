# golang-docker-livebuild
Simply enter the command "make build" followed by "make up"
This will make a live rebuilding demo of golang with iris running on port 3002
Only command is `GET/localhost:3002`  
You can edit the `cmd/docker_boil` main function namely the value of `Hello` key in the reponse object to see the output change.
