# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## To build and Run NVlines project from Github repository
1. git clone https://github.com/deborahBraud/Nv_lines_project.git
2. docker build -t ircan/nv-lines:1.0 .
3. docker run -d -p 3000:3000 ircan/nv-lines:1.0 rails s -b 0.0.0.0
4. open http://localhost:3000/ in your favorite browser

## To connect to NVlines as a logged in user
Email : testingmail@mail.com
Password : TestingUser
