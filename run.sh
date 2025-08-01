git pull
ansible-playbook -i $1-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=$1