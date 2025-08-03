default:
	git pull
	ansible-playbook -i $(component_name)-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 shop.yml -e component_name=$(component_name)

all:
	git pull
	ansible-playbook -i frontend-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 shop.yml -e component_name=frontend -e env=$(env)
	git pull
	ansible-playbook -i mongodb-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 shop.yml -e component_name=mongodb -e env=$(env)
	git pull
	ansible-playbook -i redis-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 shop.yml -e component_name=redis -e env=$(env)
	git pull
	ansible-playbook -i mysql-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 shop.yml -e component_name=mysql -e env=$(env)
	git pull
	ansible-playbook -i catalogue-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 shop.yml -e component_name=catalogue -e env=$(env)
	git pull
	ansible-playbook -i cart-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 shop.yml -e component_name=cart -e env=$(env)
	git pull	
	ansible-playbook -i user-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 shop.yml -e component_name=user -e env=$(env)
	git pull
	ansible-playbook -i payment-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 shop.yml -e component_name=payment -e env=$(env)
	git pull
	ansible-playbook -i rabbitmq-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 shop.yml -e component_name=rabbitmq -e env=$(env)
	git pull
	ansible-playbook -i shipping-dev.kommanuthala.store, -e ansible_user=ec2-user -e ansible_password=DevOps321 shop.yml -e component_name=shipping -e env=$(env)
	