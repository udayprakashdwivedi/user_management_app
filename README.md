# User Management App (Rails API + Devise-JWT + RBAC)

A backend Rails application implementing:

- User authentication via **Devise + JWT**
- Role-based access control (**Admin**, **Candidate**)
- Nested **Job Applications**
- API responses via **Jbuilder**

---

## Tech Stack

- Ruby 3.2.1
- Rails 8.0.2
- Devise + JWT for authentication
- JBuilder for API rendering

---

## Setup Instructions

bundle install
rails db:create
rails db:migrate
rails db:seed

## signup

**Endpoint:**  
`POST http://localhost:3000/signup`

{
  "user": {
    "email": "",
    "password": "",
    "password_confirmation": "",
    "role_id": 1
  }
}

## Login

**Endpoint:**  
`POST http://localhost:3000/login`

**Headers:**

**Request Body:**
{
  "user": {
    "email": "",
    "password": ""
  }
}

## job application

**Endpoint:**  
`http://localhost:3000/job_applications`

**Headers:**
Authorization  Bearer token

**Request Body:**

{
  "job_application": {
    "title": "Fullstack Dev",
    "description": "Looking for remote Fullstack Developer job"
  }
}
