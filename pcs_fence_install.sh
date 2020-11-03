#!/bin/bash

dnf config-manager --set-enabled HighAvailability
yum install -y pcs pacemaker fence-agents-all
firewall-cmd --permanent --add-service=high-availability
firewall-cmd --reload
systemctl enable pcsd
systemctl start pcsd
