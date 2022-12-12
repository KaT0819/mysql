up:
	docker-compose up -d --build

dbrun:
	docker run --name mydb -e MYSQL_ROOT_PASSWORD=root -d mysql:tag

run:
	cd script && go run main.go

bash:
	docker exec -it mysql bash
