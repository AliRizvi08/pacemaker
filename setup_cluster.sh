#!/bin/bash

echo "changeme" | passwd --stdin hacluster
pcs cluster auth Pacemaker1 Pacemaker2
pcs cluster setup --start --name Pacemaker1 Pacemaker2
pcs cluster enable --all
