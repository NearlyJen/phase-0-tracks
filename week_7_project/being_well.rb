# require gems
require 'sqlite3'
require 'faker'

# make new database and assign it to a variable
db = SQLite3::Database.new( 'being_well.db')
db.results_as_hash = true

# fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create the table
db.execute(create_table_cmd)

# add a test kitten
#db.execute("insert into kittens (name, age) VALUES ('Jen', 44)")

# add lots of kittens
def create_kitten(db, name, age)
  db.execute("insert into kittens (name, age) values ( ?, ?)", [name, age])
end

100.times do
  create_kitten(db, Faker::Name.name, 0)
end

# explore orm by retrieving data
# kittens = db.execute("select * from kittens")
# kittens.each do |kitten|
#   puts "#{kitten['name']} is #{kitten['age']}"
# end

