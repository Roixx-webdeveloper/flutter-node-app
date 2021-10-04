# Node & Flutter App

## Starting

Hello, below I provide the instructions to start the application

## Requeriments

```
Docker & Flutter SDK
```

## Running the Backend

Inside backend folder run the next command to build the docker container

```
docker-compose up
```

After a few seconds, you will see the following message

```
 Database On
```

## Testing the API 📖

### Login Request

Endpoint

```
http://localhost:8000/api/auth/login
```

Post Example

#### Method: POST Content-Type: application/json

Body:

```
 { "username" : alex, "password" : "al3x" }
```

Valid Credentials Response Example :

{
"username": "alex",
"token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiIxIiwiaWF0IjoxNjMzMzExNjY5LCJleHAiOjE2MzMzNTQ4Njl9.GGJeildWWOVqJjNW_tjNeNh9jLpL0qKrdm58ue4fpd0"
}

---

### Get All Customers

```
 Database On
```
