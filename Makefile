dev_up:
	docker-compose -f docker-compose.yml up

dev_build:
	docker-compose -f docker-compose.yml build

dev_stop:
	docker-compose -f docker-compose.yml stop

dev_down:
	docker-compose -f docker-compose.yml down

dev_test:
	docker-compose -f docker-compose.yml run --rm app sh -c "python manage.py test"

dev_migrations:
	docker-compose -f docker-compose.yml run --rm app sh -c "python manage.py makemigrations"

dev_migrate:
	docker-compose -f docker-compose.yml run --rm app sh -c "python manage.py wait_for_db && python manage.py migrate"
