# Shoe Store Database

#### An application for a shoe store inventory system, 05.12.2017

#### By Ben Williams

## Description

This site allows users to create, update and delete shoe stores. The user can then create brands and assign them to stores. Validations guide what the user can enter.

## User Stories

* As a user, I want to be able to add, update, delete and list shoe stores.
* As a user, I want to be able to add and list new shoe brands. Shoe brands should include price.
* As a user, I want to be able to add shoe brands in the application (don't worry about updating, listing or destroying shoe brands).
* As a user, I want to be able to add existing shoe brands to a store to show where they are sold.
* As a user, I want to be able to associate the same brand of shoes with multiple stores.
* As a user, I want to be able to see all of the brands a store sells on the individual store page.
* As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them.
* As a user, I want the price to be in currency format even if I just inputted a number. (In other words, typing in 50 should be updated to $50.00.)
* As a user, I do not want stores and/or shoe brands to be saved if I enter a blank name.
* As a user, I want all stores and brands to be unique. There shouldn't be two entries in the database for Blundstone.
* As a user, I want store and brand names to have a maximum of one hundred characters.

## Setup/Installation Requirements

* Copy the URL to this repository
* Open terminal and navigate to the desktop
* Clone this repository using command: git clone "insert-url-here"
* To view in browser run command 'ruby app.rb'
* Type  'localhost:4567' in browser
* Open code in text editor of choice

* Run command $ postgres in terminal
* Open new tab in terminal
* Run command $ rake db:create
* Run command $ rake db:migrate
* Run command $ rake db:test:prepare

## Built With

* Ruby
* Capybara
* Sinatra
* HTML
* CSS
* Bootstrap https://getbootstrap.com/
* Activerecord
* Rake

## Known Bugs
No known bugs!

## Support and contact details

If you'd like to improve upon or use this project, please contact me at benjarwilliams at gmail dot com.

## License

MIT License

Copyright (c) Ben Williams 2017

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
