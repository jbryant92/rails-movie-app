# Rails Movie App

## Setup

### Requirements

* Ruby 2.6.4
* Install gems using `bundle install`

### Database Setup

This app uses SQLite3. For local development your DB will be stored in `db/development.sqlite3`

To set up, run:

```
> rake db:setup
```

This will create the db, run the migrations and seed the database.

### Run the app

Launch the rails server with:

```
> rails s
```

You can now access the app at `http://localhost:3000/`.

### Running tests

This app rouge and has no tests. Be afraid.
