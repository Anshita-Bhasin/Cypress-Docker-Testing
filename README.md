# Cypress-Docker-Testing

This repository provides a sample project that demonstrates how to use Cypress tests with Docker containers. By running Cypress in a Docker container, you can easily set up a consistent and reproducible environment for your tests.

As of April 2023, Cypress supports below docker images
<img width="862" alt="image" src="https://user-images.githubusercontent.com/10338077/232113265-97572a4c-b9fd-4cd1-a762-f8c8e9f21c3b.png">


# Prerequisites
=================

Install:

Docker
Node.js

# Run Headless Cypress test locally using Docker Image
Docker Image contains both Cypress and OS dependencies which can be used to run Cypress test.As of today ( March 2023), there are 4 images provided for running Cypress in Docker.

cypress/factory
cypress/base
cypress/browsers
cypress/included

There are multiple ways in which Cypress tests can be run in Docker containers. One of the ways is to run using the following command from the root of your project.

"<docker run -it -v $PWD:/e2e -w /e2e cypress/included:12.8.1>"

# Run Cypress on Chrome and Firefox Browser Using Docker Image

Running Cypress tests on specific browser versions can be necessary to ensure compatibility with the target environment. Different browsers like Firefox and Chrome may have varying feature sets and behaviors that can affect the test results.

By default, Cypress runs the tests on Electron browser but if you want to run Cypress tests on Chrome and Firefox browsers using a Docker image. Then, you can follow the below commands.


"< docker run -it -v $PWD:/e2e -w /e2e cypress/included:12.8.1 --browser firefox >"

# Run Cypress tests in headless mode using Dockerfile

Running Cypress tests with Docker can help catch and fix issues early in the development process, saving time and resources down the line.if you want to use a customized script and run it using Docker. In that case, you can use Dockerfile.

You can refer to Dockerfile created at the root level. After creating a Dockerfile, next process is

1) Building a Dockerfile
To build the Docker image, navigate to the directory containing your Dockerfile and run the following command: 

" <docker build -t <image_name> . >"

2) After the docker image is built, you can verify by running it,by running the command 
    "<docker images>"
  
3) Run the docker image after building it by using the command : 
    "<docker run imagename:tagename .>"
  




# Run Cypress test on multiple browsers Using Docker Compose

The Docker Compose file is a YAML file that defines how Docker containers should be built, configured, and run as a single service or application. With the Docker Compose file, you can define multiple containers and their configuration in a single file, making it easier to manage and deploy complex Cypress testing environments.

Once you create docker compose file . You can run the test in docker container using the command

"< docker-compose up >"


# Run Cypress test on Cloud Grid Using Docker file

Cypress testing on a cloud platform (like LambdaTest) helps you attain accelerated test execution as well as improved browser coverage. There are multiple ways to perform Cypress testing on a cloud testing platform like LambdaTest. One of them is using Docker.

To use Dockerfile, follow below steps

1) Build Docker Image  "docker build -t <image_name> . "
2) Docker Login : docker login
3) Docker Tag : docker tag imagename:tag dockerUsername/imagename:tag
4) Docker Push : docker push dockerUsername/image-name:v1
5) Docker Run : docker run <image_name>:<tag_name> 



# Run Cypress Test in Docker Container on CI.CD(GitHub Actions)

GitHub Actions is a powerful CI/CD platform that enables you to automate workflows for building, testing, and publishing software across multiple platforms, operating systems, and programming languages. With GitHub Actions, you can even see the status checks displayed within the pull request.

One of the significant advantages of using GitHub Actions is that it allows you to execute Cypress tests in a Docker container, providing a self-contained and repeatable environment for testing.


There is an existing Docker image that already includes Chrome version 87 and Firefox version 82 pre-installed, which you can use to run Cypress tests. To leverage this image, you can pass the container image as an argument. Once the test cases are executed, the container is automatically stopped.

Create .yml in ".github/workflows/build.yml" and add the code for running test case in docker container

"<container: cypress/browsers:node12.13.0-chrome78-ff70>"
  



# Bonus: Top Docker Commands
  
Sharing some useful Docker commands.


<img width="665" alt="image" src="https://user-images.githubusercontent.com/10338077/232119538-c6602213-a57e-4716-a1d6-74d35f0b56c2.png">





