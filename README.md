# Bunny Forum Service

## Setup(Mac OS)
Install docker for mac https://docs.docker.com/engine/installation/mac/ then run the following commands
* ```docker-compose build```
* ```docker-compose run app rake db:create```
* ```docker-compose run app rake db:migrate```

## Running Specs
```docker-compose run rake test```

## Before committing changes
```docker-compose run rake test``` Must pass
```docker-compose run rake rubocop``` Must pass

## Seeding the test database
```docker-compose run rake db:seed```

## Running the application
```docker-compose up```

## Endpoints

### GET /api/posts
```curl localhost:5000/api/posts```

### POST /api/posts
```curl -X POST -d 'post[title]'='New Post Title' localhost:5000/api/posts```

### GET /api/posts/:id
```curl localhost:5000/api/posts/1```

### PATCH /api/posts/:id
```curl -X PATCH -d 'post[title]'='New Post Title' localhost:5000/api/posts/1```