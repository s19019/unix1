#!/bin/bash

cd /tmp
tar -czf home-$(date +'%Y-%m-%d').tar.gz --exclude ~/ex.cnf $HOME
