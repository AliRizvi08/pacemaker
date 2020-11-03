#!/bin/bash

echo "changeme" | passwd --stdin hacluster
pcs host auth -u hacluster -p changeme Pacemaker1 Pacemaker2
pcs cluster setup Pacemaker Pacemaker1 Pacemaker2
pcs cluster start --all
