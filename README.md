# What is gl-metrics
gl-metrics is a docker image which contains a tool `metrics` to gether and print system metrics like cpu or memory usage. This tool was written on Python and uses [psutil](https://psutil.readthedocs.io) - cross-platform library for retrieving information on running processes and system utilization.

# How to use gl-metrics
## Build image
Go to the project folder and build docker image
```
$ docker build -t gl-metrics .
```

## Run the application
Create and run container using the image.  You can use `--rm` argument to remove container after it finishes the work. 
```
$ docker run --rm gl-metrics
```
If you run this container without any command and arguments you will get a usage message. In order to get a result and print system cpu or memory information you have to add the command `./metrics` and one required argument `cpu` or `mem`.
```
$ docker run --rm gl-metrics ./metrics cpu
$ docker run --rm gl-metrics ./metrics mem
```
These commands will show you different parameters of cpu and memory usage on the system.
