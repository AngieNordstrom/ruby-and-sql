# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new
p new_salesperson
new_salesperson ["first_name"] = "Angie"
new_salesperson ["last_name"] = "Nordstrom"
new_salesperson ["email"] = "angie.nordstrom@kellogg.northwestern.edu"
p new_salesperson

new_salesperson.save
p new_salesperson

new_salesperson = Salesperson.new
p new_salesperson
new_salesperson ["first_name"] = "Isaiah"
new_salesperson ["last_name"] = "Suggs"
new_salesperson ["email"] = "isaiah.suggs@kellogg.northwestern.edu"
p new_salesperson

new_salesperson.save
p new_salesperson

# 3. write code to display how many salespeople rows are in the database
no_of_salespeople = Salesperson.all.count
puts "Salespeople: #{no_of_salespeople}"
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
angie = Salesperson.find_by({"first_name" => "Angie"})
angie["email"] = "ang.nordstrom@gmail.com"
p angie 
angie.save
p angie

# CHALLENGE:
# 5. write code to display each salesperson's full name
salespeople = Salesperson.all
# ---------------------------------
# Salespeople: 2
# Ben Block
for person in salespeople
    p person
    first_name = person["first_name"]
    last_name = person["last_name"]
    puts "#{first_name} #{last_name}"

# Brian Eng
