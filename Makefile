build-env:
	docker build -t food-scanner .

run-jupyter-notebook:
	make build-env
	docker run -it --rm -v .:/app -w /app -p 8888:8888 food-scanner jupyter notebook --allow-root --ip=0.0.0.0

.PHONY: build-env, run-jupyter-notebook