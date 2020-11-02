#!/bin/bash

yum install -y pcs fence-agents-all
firewall-cmd --permanent --add-service=high-availability
firewall-cmd --reload
systemctl enable pcsd
systemctl start pcsd
