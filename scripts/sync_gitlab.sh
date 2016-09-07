#!/bin/bash
gco glab-master
g pull glab
gco master
g merge glab-master
g push

