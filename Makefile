.PHONY: image run release

image:
	docker build --tag codeclimate/builder-gc .

run:
	docker run \
	  --rm \
	  --interactive \
	  --tty \
	  --volume /var/run/docker.sock:/var/run/docker.sock \
	  codeclimate/builder-gc gc_builders

release:
	docker push codeclimate/builder-gc
