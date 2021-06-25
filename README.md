# NvLines Database

## Intro

Over the past decade, the sea anemone Nematostella vectensis has emerged as a novel research model to study the molecular and cellular processes underlying regeneration and aging. Thanks to the establishment of reporter and functional lines, the scientific community can now investigate in detail a variety of biological processes in Nematostella, including its extreme regenerative capacities. Efforts to regroup and enable mining of existing data from various established research models (such as Flybase and Zfin databases), have already shown that the development of freely accessible online databases are crucial tools to foster scientific advances and build scientific communities. The increasing number of Nematostella lines has led the Röttinger team, "Embryogenesis, regeneration and aging" from the IRCAN, to estimate important the establishment of a database dedicated to regrouping all existing reporter, functional and wild lines of Nematostella vectensis. Despite the existence of several databases relating to Nematostella, transcriptomics, or in situ hybridization, a database specific to reporter, functional and wild lines have not yet been created.

The aim of this project is to provide for each line type, an « identity sheet », with phenotypic, molecular, and imaging associated information. These data will also be supplemented by the publications related to each line, as well as the research teams who developed the line(s). NvLines has been created with this aim in mind and permits users to add or modify line information through a fluid, intuitive and responsive interface.  


## To build and Run NVlines project from Github repository
1. git clone https://github.com/deborahBraud/Nv_lines_project.git
2. docker build -t ircan/nv-lines:1.0 .
3. docker run -d -p 3000:3000 ircan/nv-lines:1.0 rails s -b 0.0.0.0
4. open http://localhost:3000/ in your favorite browser

## To connect to NVlines as a logged in user
Email : testingmail@mail.com
Password : TestingUser

## Tools
* Ruby version : ruby 2.7.2p137

* Rails version : Rails 6.1.3.1

* Yarn version : 1.22.5

* Node version : v14.16.0

* Database : sqlite3 version 1.4

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...