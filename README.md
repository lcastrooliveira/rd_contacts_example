# README

An application written in rails to track user history navigation in a web site. It handles data sent through a POST request containing the URLs, IP address and Timestamp of a website that a user has visited with the [RD Page Tracker](https://github.com/lcastrooliveira/rd-page-tracker) installed.

[Live Demo](https://rd-interest-registry.herokuapp.com)

# Specs

* Ruby version 2.4.1
* Rails 5.1.1
* Bootstrap 3
* PostgreSQL 9.4+ (It has to support jsonb columns)

# Steps to Run

1. Clone this repo
2. `bundle exec rake db:create`
3. `bundle exec rake db:migrate`
4. You also need to seed the admin user, therefore type `bundle exec rake db:seed`
5. `rails s`

Once you've followed these steps you may log in with the default user in specified in `seeds.rb`

# Run tests

This project uses RSpec 3.x and Factory Girls to perform tests.

* `bundle exec rspec`

## License
 
The MIT License (MIT)

Copyright (c) 2017 Lucas Oliveira

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
