NAME = "bz/serverless"


all : build

build :
	docker build -t $(NAME) .

shell : 
	docker run --rm -it \
		-v `pwd`/serverless-demo:/code \
		--name=slsdemo $(NAME) bash
