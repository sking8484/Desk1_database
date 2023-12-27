include .env
run_db:
	docker run -d \
	--name some-postgres \
	-e POSTGRES_PASSWORD=$(POSTGRES_PASSWORD) \
	-e POSTGRES_DB=$(POSTGRES_DB) \
	-v test_data:/var/lib/postgresql/data \
	postgres

delete_db:
	docker rm some-postgres

run_pgadmin:
	docker run -p 82:80 \
		--name pgadmin_container \
  	-e 'PGADMIN_DEFAULT_EMAIL=test@test.com' \
    -e 'PGADMIN_DEFAULT_PASSWORD=test' \
    -d dpage/pgadmin4
delete_pgadmin:
	docker rm pgadmin_container
