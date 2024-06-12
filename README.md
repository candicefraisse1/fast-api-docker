## TODO

# Commands
Step 1: Pull the Docker Image for DinD
```
docker pull docker:dind
```
Step 2: Step 2: Run Docker-in-Docker Container
```
docker run -dit --privileged --name MY_DIND docker:dind
```
Step 3: Access the DinD Container
```
docker exec -it MY_DIND /bin/sh
```
Step 4: Create a Dockerfile and copy the content from the repo's Dockerfile

```
vi Dockerfile
```
Step 5: build the image
```
docker build -t myimage:v1 .
```
Step 6: Run a Test Container
```
docker run -it myimage:v1 /bin/bash
```