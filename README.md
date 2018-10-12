# GIF Box
GIF Box is my capstone project for General Assembly Boston's WDI bootcamp. This is a full-stack web app that allows users to save links to their favorite GIFS.

- Deployed back end: https://young-depths-92120.herokuapp.com/
- Front end repo: https://github.com/catherineguo/gif-box-client
- Deployed front end: https://catherineguo.github.io/gif-box-client/

Technologies used in this project: React, Bootstrap, Sass, Ruby on Rails, PostgreSQL. The GIF search feature incorporates Tenor's GIF search API.

## How it works
To use GIF Box, you'll need to create an account. Once you have an account, you can simply click "Search for GIFs" to find GIFs to save, or click "Save New GIF" to add one manually. Your GIFs are saved in your GIF Box so you can view and edit them later.

It's that easy!

## Planning
For the MVP, the basic structure was a one-to-many relationship between users and gifs. Users can have many gifs, but gifs can only belong to one user.

The ERD for v1 (MVP) and v2 can be found here: https://drive.google.com/file/d/1Mca1U3kCEYpq1ncPuwij8qq2ez22nEO_/view?usp=sharing

To view the wireframes and user stories for this project, please refer to the front end repo: https://github.com/catherineguo/gif-box-client

## Catalog of Routes

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/`    | `users#changepw`  |
| DELETE | `/sign-out/`           | `users#signout`   |

### GIFs

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/gifs`                | `gifs#create`     |
| GET    | `/gifs`                | `gifs#index`      |
| GET    | `/gifs/:id`            | `gifs#show`       |
| PATCH  | `/gifs/:id`            | `gifs#update`     |
| DELETE | `/gifs/:id`            | `gifs#destroy`    |

## Development
I decided to build the back end using Ruby on Rails because I wanted to focus my time on learning React for the front end. Rails makes it easy to get a server up and running thanks to its many helpful methods and libraries. I was able to set up a functional API on day one so I could start building API calls from the front end client. The General Assembly API template provides a ProtectedController class that I used for my GifsController to require authentication before executing CRUD actions.

## Installation Instructions
- Fork and clone this repository to your local device
- Install dependencies with `bundle install`
- Create `.env` file to store secret keys
- Generate `development` and `test` secret keys to store in `.env`
- Create database using `bin/rails db:create`
- Migrate database using `bin/rails db:migrate`
- Run server using `bin/rails s`

## Future Updates
- Add v2 database: organize GIFs into folders.
- Add validation on the front-end: only accept GIF URLs that end in '.gif'
