# Django-on-docker

# What is Docker
Docker is a platform tha allows you to build, ship and run  any app anywhere.
Docker is an open source project that is considered a standard way of solving one of the costliest aspect of Software Development i.e Deployment.

# dockerfile
is a file that define the steps to create and run a custom Image 
dockerfiles are usually read from top-to-bottom when the image is created.
```
FROM <REPO>:<TAG>
WORKDIR <DIRECTORY>
COPY . <DIRECTORY>
```

# docker-compose.yml
is a tool we can use to manage one or multiple containers.

# Images
Docker Image consist of files and metadata, the metadat has information on port mapping and volumes

# Container
Containers are created from Images, they inherit their metadata to determine their startup configuration.
Changes to files in a container  are stored  within container in a copy-on-write mechanism.

### Ways to create a Docker Image
1.  **docker command** fire up the container with **docker run**  and input command to create your image on one command line .

2. **dockerfile** building from known image and specify the build with a limited set of simple commands.

### key docker command
**docker build** Build docker image
**docker run** run docker image as container
**docker commit** commit docker container as image