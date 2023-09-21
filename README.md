
## Setup

To get started, clone this repository and navigate to the project directory.

You need to build and run a Docker container. Here are the commands you can use:

```bash
docker rm -f hisolver-manim
docker build -t hisolver-manim .
docker run -d -v $(pwd):/manim-data -p 7000:7000 --restart always --name hisolver-manim hisolver-manim
```

The Docker commands above will build an image for the project, remove any existing container named `hisolver-manim`, and then run a new container with the project code mounted from your current directory. The application inside the container will listen on port 7000. 

## License

This project is open source under the MIT license. See [LICENSE](LICENSE) for details.

