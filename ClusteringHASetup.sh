#!/bin/bash
 
bash hosts.sh
bash update.sh
bash ntp_setup.sh
bash pcs_fence_install.sh
bash setup_cluster.sh
