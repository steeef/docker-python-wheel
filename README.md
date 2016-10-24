# docker-python-wheel
Use Docker to assist in building wheel files to be used with Python pip

## Instructions
Assuming a wheels directory of `./wheels`, run:

```
docker build -t docker-python-wheel
docker run -d -v $PWD/wheels:/wheels docker-python-wheel \
  <python_package>==<version>...
```
