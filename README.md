#Terminal Themed Blog

[![Build Status](https://travis-ci.org/cubadomingo/terminal_theme_blog.svg?branch=master)](https://travis-ci.org/cubadomingo/terminal_theme_blog)
[![Coverage Status](https://coveralls.io/repos/github/cubadomingo/terminal_theme_blog/badge.svg?branch=master)](https://coveralls.io/github/cubadomingo/terminal_theme_blog?branch=master)

## Description

This web application is for my terminal themed personal site. It includes custom built authentication, with sessions and cookies, as well as authentication. It also gives a user the ability to login and update my user information, but not create or delete users, since there should only be one user for this blog I see no need in doing so. Once logged in a user can use all the CRUD functions for blog posts and categories. Anonymous visitors can also leave comments in each blog post but not delete or update, although the user does have the ability to delete comments. The website is also responsive for all screen sizes.

## Installation

This application uses PostgreSQL for the database. I use [Postgress.app](http://postgresapp.com/) to run Postgres locally on my mac.

Once Postgres is running locally you want to update your database.yml file with your postgres username and password, or you can create a .env file and place it in there like so:

```
PG_DEV_USERNAME:yourusername
PG_DEV_PASSWORD:yourpassword
```

This works because of the DOT-ENV gem.

To install you want to clone the repository into your local machine and then run:

1. `bundle install`
2. `rake db:setup`

The application is now installed. To view it locally on your machine:

`rails server`

and then visit [http://localhost:3000](http://localhost:3000)

Log in with:

Username: User@example.com

Password: Testing

Got to the settings and change to your information.

That's it, you now have a working terminal themed blog!

## Technology Stack

### Back-End

* VPS: **DigitalOcean**
* OS: **Ubuntu Trusty Tahr**
* Database: **PostgreSQL**
* Web Server: **NGINX**
* App Server: **Passenger Phusion**
* Deployment Automation: **Capistrano**
* Scripting Language: **Ruby**
* Web Framework: **Ruby on Rails**

### Front-End

* Structure: **HTML5 & Javascript(ES6)**
* Design: **CSS3 & Sass**
* Responsive Framework: **Bootstrap**


### Testing

* Rails Framework: **RSpec**, **Capybara**
* Tools: **Shoulda Matchers**, **factory_girl**

## Testing

To run the tests for the app:

`Bundle exec RSpec'

## Contributing

If you find any bugs, please feel free to create an issue and/or make a pull request. If you have any questions about the application feel free to [shoot me an email](mailto:devinosor.io).
