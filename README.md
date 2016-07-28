[![Build Status](https://travis-ci.org/cubadomingo/terminal_theme_blog.svg?branch=master)](https://travis-ci.org/cubadomingo/terminal_theme_blog)
[![Coverage Status](https://coveralls.io/repos/github/cubadomingo/terminal_theme_blog/badge.svg?branch=master)](https://coveralls.io/github/cubadomingo/terminal_theme_blog?branch=master)

## Description

This web application is for my terminal themed personal site. It includes custom build authentication, with sessions and cookies, as well as authentication. It includes the ability to login and update my user information, but not create or delete users, since I am the only user for the site I saw no need in doing so. Once logged in I can use all the CRUD functions for blog posts and categories. Anonymous users can also leave comments in each blog post but not delete or update, although the user does have the ability to delete comments. The website is also responsive for all screen sizes.

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

## Contributin

This is my **first web application ever built**. So I acknowledge the fact some of the code may look a bit weird, I haven't quite gotten to refactoring it yet. If you see certain features or code that could use some improvement I would appreciate your help very much. If you have any questions about the application feel free to [shoot me an email](mailto:devinosor.io).
