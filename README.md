# Description

Docker image to run [Androguard](https://github.com/androguard/androguard) and [Alpine Linux](https://alpinelinux.org).

# Usage

```
$ docker pull dorneanu/alpine-androguard
$ docker run -d -v /home/data:/DATA -p 8888:8888 -ti androguard jupyter notebook --ip 0.0.0.0 --port 8888 --no-browser
```

# Build

```
$ git clone https://github.com/dorneanu/alpine-androguard
$ cd alpine-androguard
$ docker build -t dorneanu/androguard .
```


