#!/bin/bash

component=$1
envi=$2

echo " component : $component , environment : $envi

dnf install ansible -y

ansible-pull -i localhost, -U https://github.com/RahulYadav22775/expense-ansible-roles-tf.git backend.yaml,
-e component=$component -e environment=$envi
