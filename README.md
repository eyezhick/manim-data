
## Setup

To get started, clone this repository and navigate to the project directory.

You need to build and run a Docker container. Here are the commands you can use:

```bash
docker rm -f hisolver-manim
docker build -t hisolver-manim .

docker run -p 8888:8888 -v $(pwd):/manim-data hisolver-manim

```

The Docker commands above will build an image for the project, remove any existing container named `hisolver-manim`, and then run a new container with the project code mounted from your current directory. The application inside the container will listen on port 8888. 

With the docker running, you should see output indicating that the Jupyter Notebook server has started. It will also display a URL with a token. You can paste this URL into your web browser to access the Jupyter Notebook interface.

You can test your manim code in the notebook.

## License

This project is open source under the MIT license. See [LICENSE](LICENSE) for details.

