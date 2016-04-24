# require gems
require 'sqlite3'
require_relative 'yay_me.rb'

# make new database and assign it to a variable
db = SQLite3::Database.new( 'yay_me.db')
# db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
  SQL

# create the table
db.execute(create_table_cmd)

# let user add themselves if they don't already exist
def create_user(db, name)
  db.execute('insert into users (name) values ( ? )', [name])
  return name
end

def update_user(db, name)
  db.execute("UPDATE users SET name=? WHERE name=?", [name])
end

def delete_user(db, name)
  db.execute("DELETE FROM users WHERE name=?", [name])
end

# Ask user to type in their name
puts "What is your user name?"
name = gets.chomp.capitalize
current_user = create_user(db, name)
puts "You've created user #{name}"
