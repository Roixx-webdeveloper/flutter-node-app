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

```
http://localhost:8000/api/auth/login
```

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

## Customers Section

In order to access customers, a valid JWT must be supplied

---

### Get All Customers

#### Method: Get

Headers:
token-key : 'jwt'

```
http://localhost:8000/api/customers/

```

Valid JWT Response Example :

{
"customers": [
{
"id": 2,
"name": "oscar",
"phone": "111",
"email": "email@gmail.com",
"rating": 5,
"createdAt": "2021-10-03T23:52:11.000Z",
"updatedAt": "2021-10-03T23:52:11.000Z"
}
]
}

---

### Get Customer

#### Method: Get

Headers:
token-key : 'jwt'

```
http://localhost:8000/api/customers/:id

```

Valid JWT Response Example :

{
"customer": {
"id": 2,
"name": "oscar",
"phone": "111",
"email": "email@gmail.com",
"rating": 5,
"createdAt": "2021-10-03T23:52:11.000Z",
"updatedAt": "2021-10-03T23:52:11.000Z"
}
}

---

### Edit Customer

#### Method: PUT

Headers:
token-key : 'jwt'

```
http://localhost:8000/api/customers/:id

```

Body example:

```
{
    "name": "new name",
    "phone": "11111111",
    "email": "new@email.com",
    "rating": 1
}
```

Valid JWT Response Example :

`id` = '2';

---
