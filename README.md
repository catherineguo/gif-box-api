# GIF Box
My capstone project for General Assembly Boston's WDI bootcamp.
GIF Box is a full-stack web app that allows users to save links to their favorite GIFS.

- Deployed back end: https://young-depths-92120.herokuapp.com/
- Front end repo: https://github.com/catherineguo/gif-box-client
- Deployed front end: https://catherineguo.github.io/gif-box-client/

Technologies used in this project: React, Bootstrap, Sass, Ruby on Rails, PostgreSQL. The GIF search feature incorporates Tenor's GIF search API.

## How it works
To use GIF Box, you'll need to create an account. Once you have an account, you can simply click "Search for GIFs" to find GIFs to save, or click "Save New GIF" to add one manually. Your GIFs are saved in your GIF Box so you can view and edit them later.

It's that easy!

## Planning
For the MVP, the basic structure was a one-to-many relationship between users and gifs. Users can have many gifs, but gifs can only belong to one user.

The ERD for v1 (MVP) and v2 can be found here: <<<insert link here>>>

To view the wireframes and user stories for this project, please refer to the front end repo: https://github.com/catherineguo/gif-box-client

## Catalog of Routes:

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
Ruby on Rails makes it easy to get a server up and running thanks to its many helpful methods and libraries. The General Assembly API template provides a ProtectedController class that I used for my GifsController to require authentication before executing CRUD actions.

## Future Updates
- Add v2 database: organize GIFs into folders.
