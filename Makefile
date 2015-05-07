# Build a PSORTb container
# By Matthew Laird <lairdm@sfu.ca>

NAME = psortb
IMAGE_REPO = lairdm
VERSION = 1.0.0
IMAGE_NAME = $(IMAGE_REPO)/$(NAME)
DOMAIN = psort.org

all:: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "     make build        - Build image $(IMAGE_NAME)"
	@echo "     make push         - Push $(IMAGE_NAME) to public docker repo"
	@echo "     make run          - Run $(NAME) container"
	@echo "     make start        - Start the EXISTING $(NAME) container"
	@echo "     make stop         - Stop $(NAME) container"
	@echo "     make restart      - Stop and start $(NAME) container"
	@echo "     make remove       - Stop and remove $(NAME) container"
	@echo "     make state        - View state $(NAME) container"
	@echo "     make logs         - View logs in real time"

build:
	docker build --rm --no-cache -t $(IMAGE_NAME):$(VERSION) .

push:
	docker push $(IMAGE_NAME):$(VERSION)

run:
	docker run -d -p 80:80 -e NODE_ENVIRONMENT="production" --restart=always --name $(NAME) $(IMAGE_NAME):$(VERSION)

start:
	@echo "Starting $(NAME)..."
	docker start $(NAME) > /dev/null

stop:
	@echo "Stopping $(NAME)..."
	docker stop $(NAME) > /dev/null

restart: stop start

remove: stop
	@echo "Removing $(NAME)..."
	docker rm $(NAME) > /dev/null

state:
	docker ps -a | grep $(NAME)

logs:
	@echo "Build $(NAME)..."
	docker logs -f $(NAME)
