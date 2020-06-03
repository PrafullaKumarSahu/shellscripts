#!/bin/sh


# Cheating with sed

# whilst this means that system has to load a largish executable (52k for sed)

sed s/eth0/eth1/g cheatingfile1 > cheatingfile2