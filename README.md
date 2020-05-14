# README

# Project description

Invisible Closet is established at Grinnell High School, Grinnell Middle School and the Davis Elementary School. The Invisible Closet project is aims to provide free resources for all students at the Grinnell Middle School including food, clothes, toiletries, and other needs of the students. Invisible Closet prioritizes to provide users with accessibility and anonymity.

# TO-DO list:

- Implement search page so that students can search for items
- Link Google request form with the website database and urls
- Add a representative picture of the project to the homepage of the website
- Adjust the donation form to two-column formatting (wish list on the left and form on the right)
- Support download and import of .csv files which record the previous inventory of the closet
- Generate automatic thank-you emails to donors after they fill out the donation forms
- Add links to the Grinnell Middle School website and education department website
- Implement more test cases for the database and front-end urls
- Ultimately develop inter-closet inventory systems

# Final Progress Report

https://docs.google.com/document/d/1IdREyniXDEmAZeWWu3iLascXSVHoJ5GIoNAnE6d60-E/edit?usp=sharing

# Ruby on Rails application source

This is an application developed based on 
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](https://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/).

## License

All source code in the [Ruby on Rails Tutorial](https://www.railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information, see the
[*Ruby on Rails Tutorial* book](https://www.railstutorial.org/book).
