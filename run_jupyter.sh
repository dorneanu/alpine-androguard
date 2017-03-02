#!/bin/bash

# jupyter has some problems running in docker directly
ipython notebook --ip 0.0.0.0 --port 8888 --no-browser
