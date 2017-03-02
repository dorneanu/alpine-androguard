# Description

Docker image to run [Androguard](https://github.com/androguard/androguard) and [Alpine Linux](https://alpinelinux.org). It's based on:

* Python3
* Alpine Linux (latest)
* Androguard
  + I use the Python3 version available [here](https://github.com/appknox/androguard)

# Usage

```
$ docker pull dorneanu/alpine-androguard
$ docker run -v /home/data:/DATA -p 8888:8888 -ti dorneanu/alpine-androguard
```

# Build

```
$ git clone https://github.com/dorneanu/alpine-androguard
$ cd alpine-androguard
$ docker build -t dorneanu/androguard .
```


