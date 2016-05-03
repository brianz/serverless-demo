NAME = "bz/serverless"


all : build

build :
	docker build -t $(NAME) .

shell : 
	docker run --rm -it \
		-v `pwd`:/code \
		--env-file=env \
		--name=slsdemo $(NAME) bash
