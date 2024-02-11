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
