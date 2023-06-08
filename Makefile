.PHONY: build
build:
	docker buildx bake -f bake.hcl --push