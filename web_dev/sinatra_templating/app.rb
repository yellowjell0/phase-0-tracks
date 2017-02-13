# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'


db1 = SQLite3::Database.new("campuses.db")
db1.results_as_hash = true

create_campuses_table = <<-SQL
CREATE TABLE IF NOT EXISTS campuses(
id INTEGER PRIMARY KEY,
city VARCHAR(200),
dean VARCHAR(200)
)
SQL

db1.execute(create_campuses_table)

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home 
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end


# Create an HTTP route that will respond with the template you created in the previous release.
get '/city/new' do
  erb :city
end

post 'city' do
	db.execute("INSERT INTO campuses (city, dean) VALUES (?,?)", [params['city']. params['dean']])
	redirect '/'
end

# add static resources