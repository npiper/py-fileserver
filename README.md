# 🚀 LOCAL Network File Upload Server

 This repository contains everything you need to set up a Dockerized Python web server with file upload functionality.

Have found this useful as a simple way to share files between computers on a local network without needing to do network sharing as the contents can just be uploaded in a Browser to the target location.

## Table of Contents
- [Quick Start](#quick-start)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Quick Start

Get up and running in no time with these quick start instructions:

1. Clone the repository:

```bash
   git clone https://github.com/your-username/your-project.git
```

2. Build the Docker image:

```
docker build -t python-web-server .
```

3. Run the local docker container

_Replace /path/to/local/folder with a local location such as` $(pwd)`_

```
docker run -d -p 8080:80 -v /path/to/local/folder:/app/uploads --name python-web-server-container python-web-server
```

4. Access the web server at `http://localhost:8080/static/upload.html`.


## Prerequisites

Before you get started, make sure you have the following prerequisites:

Docker: Ensure you have Docker installed on your machine.
 You can download it [here](https://www.docker.com/get-started).

## Usage

The Python web server serves a basic HTML page at http://localhost:8080/static/upload.html.

You can upload files using the provided form on the HTML page, and they will be stored in the local folder you specified during container setup.

Customize the HTML and Python script to suit your project's needs.

## Contributing

We welcome contributions from the community! If you'd like to contribute to this project, please follow these steps:

* Create a fork of this repository.
* Clone your fork to your local machine.
* Create a new branch for your feature or bug fix.
* Make your changes and commit them.
* Push your changes to your fork.
* Create a pull request in this repository.

For bug reports or feature requests, please use the Github features.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
