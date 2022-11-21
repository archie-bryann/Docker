<!-- https://www.youtube.com/watch?v=ZVQmnziXEpA&list=PL4cUxeGkcC9hxjeEtdHFNYMtCpjNBm3h7&index=4 -->
Docker Images
--------------
- Like blueprint for containers (they contain everything needed for a container to run)
+ Runtime environment
+ Application code
+ Any dependencies
+ Extra configuration (e.g. env variables)
+ Commands

Containers
-----------
They are runnable instances of an image

The image can then be shared to anyone that needs run the appplication on their computer



Docker Images
--------------
Images are made up from several layers

Image (layers)
--------
4. run commands
3. dependencies
2. source code
1. Parent image: Includes the OS & sometimes the runtime environment e.g. node

<!-- PUSH TO GITHUB ONCE DONE -->
# Run `docker build -t myapp .` to deploy DockerImage
# Run `docker build -t myapp:v1 .` to deploy DockerImage with version

# Run `docker images` to list docker images

# Run `docker run --name <container_name> <image_name|image_id>` to run a container on a images

# Run `docker ps` to see list of running containers
# Run `docker ps -a` to see all containers (where running/not)

# Run `docker run --name <container_name> -p  4000:4000 -d <image_name|image_id> ` to create a new container & run on an image with port , -d stands for detached {the terminal doesn't need to be open to run}

# Run `docker start <container_name>` to start pre-existing container in detached mode
# Run `docker start - i myapp_c`to start pre-existing container in un-detached mode
# Run `docker stop <container_name>` to stop pre-existing container

# Run `docker image rm <image_name>` to delete image - will work for not in use images

# Run `docker image rm <image_name> -f` to force delete image even if in use

# Run `docker container rm <container_name> <container_name>` to delete a container

# Run `docker system prune -a` to delete all containers, images, and volumes

Volumes
---------
Volumes allows us to specify folders on the host computer that can be made available to running containers. 
The image itself does not change.

<!-- # To continue: -->
<!-- [https://www.youtube.com/watch?v=Wh4BcFFr6Fc&list=PL4cUxeGkcC9hxjeEtdHFNYMtCpjNBm3h7&index=10] 6:41 -->

<!-- # Next Lessons: -->
<!-- Deploying a website with docker (github action, nginx, digital ocean) -->
<!-- Part 1: https://www.youtube.com/watch?v=JsOoUrII3EY  
Part 2: https://www.youtube.com/watch?v=hf8wUUrGCgU  -->

