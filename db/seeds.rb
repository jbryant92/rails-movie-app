# Create movies
lotr = Movie.create(
  title: 'Lord of the Rings',
  release_date: Date.new(2001, 12, 10),
  country: 'United States'
)

star_wars = Movie.create(
  title: 'Star Wars',
  release_date: Date.new(1977, 5, 3),
  country: 'United States'
)

indiana_jones = Movie.create(
  title: 'Indiana Jones',
  release_date: Date.new(1991, 10, 11),
  country: 'United States'
)

# Create actors
harrison_ford = Actor.create(
  first_name: 'Harrison',
  last_name: 'Ford'
)

elijah_wood = Actor.create(
  first_name: 'Elijah',
  last_name: 'Wood'
)

sean_astin = Actor.create(
  first_name: 'Sean',
  last_name: 'Astin'
)

mark_hamil = Actor.create(
  first_name: 'Mark',
  last_name: 'Hamil'
)

denholm_elliott = Actor.create(
  first_name: 'Denholm',
  last_name: 'Elliott'
)

# Create characters
Character.create(
  name: 'Marcus Brody',
  movie: indiana_jones,
  actor: denholm_elliott
)

Character.create(
  name: 'Indiana Jones',
  movie: indiana_jones,
  actor: harrison_ford
)

Character.create(
  name: 'Han Solo',
  movie: star_wars,
  actor: harrison_ford
)

Character.create(
  name: 'Luke Skywalker',
  movie: star_wars,
  actor: mark_hamil
)

Character.create(
  name: 'Frodo Baggins',
  movie: lotr,
  actor: elijah_wood
)

Character.create(
  name: 'Samwise Gamgee',
  movie: lotr,
  actor: sean_astin
)
