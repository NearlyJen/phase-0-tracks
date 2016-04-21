# require gems
require 'sqlite3'
require 'faker'

# make new database and assign it to a variable
db = SQLite3::Database.new( 'being_well.db')