podman-run:
	podman run -it --rm \
		--name onedev \
		-p 6610:6610 -p 6611:6611 \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v ~/data/onedev:/opt/onedev \
		-d localhost/onedev-server:latest


podman-build:
	podman build --tag onedev-server .
