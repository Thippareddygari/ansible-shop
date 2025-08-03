git pull
ansible-playbook -i $1-{{ env }}..kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 shop.yml -e component_name=$1