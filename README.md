# docker-python-wheel
Use Docker to assist in building wheel files to be used with Python pip

## Instructions
Assuming a wheels directory of `./wheels` and the path to your
requirements.txt file is `./src`, run:

```
docker build -t docker-python-wheel
docker run -d -v ./wheels:/wheels ./src:/src docker-python-wheel
```
