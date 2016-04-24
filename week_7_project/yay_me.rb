# User Can:
# Add, update, or delete themselves themselves in db
# Create personal goal
# If goal does not already exist, add new
# Indicate goal completed
# View goals / personal goals
# View completed goals

# IF THERE IS TIME
# Create badges
# User automatically 'earnns badges'
# db will compare completed goals and badges
# Then assign personal badge.

# require gems
require 'sqlite3'

# make new database and assign it to a variable
db = SQLite3::Database.new( 'yay_me.db')

# create user table if it doesn't already exist
create_table_users = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
  SQL

# create goals table if it doesn't already exist
create_table_goals = <<-SQL
  CREATE TABLE IF NOT EXISTS goals(
    id INTEGER PRIMARY KEY,
    description VARCHAR(255)
  )
  SQL

# create the tables
db.execute(create_table_users)
db.execute(create_table_goals)

# methods to let users add, update, or delete themselves
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

# methods to let users add goals, but not update or delete because that would mess u p the personal goals
# of other users
def create_goal(db, description)
  db.execute('insert into goals (description) values ( ? )', [description])
end

# methods to let users add, update, or delete personal goals
def create_personal_goal(db, timeline, complete)
  db.execute('insert into goals (timeline, complete) values ( ?, ?)', [timeline, complete])
end

def update_personal_goal(db, timeline)
  db.execute("UPDATE users SET timeline=? WHERE id=?", [timeline])
end

def delete_personal_goal(db, timeline, complete)
  db.execute("DELETE FROM users WHERE name=?", [name])
end





# Ask user to type in their name
puts "What is your user name?"
name = gets.chomp.capitalize
current_user = create_user(db, name)
puts "You've created user #{name}"