PUSH_DOCKERHUB:
	# push apache
	docker build --tag=microservice-kubernetes-demo-apache apache
	docker tag microservice-kubernetes-demo-apache $(YOUR_DOCKER_ACCOUNT)/microservice-kubernetes-demo-apache:latest
	docker push $(YOUR_DOCKER_ACCOUNT)/microservice-kubernetes-demo-apache

	# push catalog
	docker build --tag=microservice-kubernetes-demo-catalog microservice-kubernetes-demo-catalog
	docker tag microservice-kubernetes-demo-catalog $(YOUR_DOCKER_ACCOUNT)/microservice-kubernetes-demo-catalog:latest
	docker push $(YOUR_DOCKER_ACCOUNT)/microservice-kubernetes-demo-catalog

	# push customer
	docker build --tag=microservice-kubernetes-demo-customer microservice-kubernetes-demo-customer
	docker tag microservice-kubernetes-demo-customer $(YOUR_DOCKER_ACCOUNT)/microservice-kubernetes-demo-customer:latest
	docker push $(YOUR_DOCKER_ACCOUNT)/microservice-kubernetes-demo-customer

	# push order
	docker build --tag=microservice-kubernetes-demo-order microservice-kubernetes-demo-order
	docker tag microservice-kubernetes-demo-order $(YOUR_DOCKER_ACCOUNT)/microservice-kubernetes-demo-order:latest
	docker push $(YOUR_DOCKER_ACCOUNT)/microservice-kubernetes-demo-order
