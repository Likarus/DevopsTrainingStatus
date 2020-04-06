Image: An executable package containing all of the software that’s needed to run a container.

Run a container using an image with:
	docker run IMAGE

Download an image with:
	docker image pull IMAGE
	docker pull IMAGE
Layered File System: Images and containers use a layered file system. Each layer contains only the differences from the previous layer.
View file system layers in an image with:
	docker image history IMAGE