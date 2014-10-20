some basic user stories:

###customers
allow a customer to buy a reservation
allow a customer to return a reservation
remind a customer of their upcoming reservation
ask for a customer to give feedback on their experience
display a map of the restaurant for the customers
allow a customer to favorite a restaurant
allow a customer to save a restaurant to a list
see how many favorites a restaurant has received
tweet about a reservation they have
see the menu of the restaurant

###managers
allow a manager to list a table for sale
allow a manager to set the price of the table
allow a manager to be notified when a table sells
allow a manager to see a report of sales
allow a manager to unlist a table for sale
allow a manager to upload a menu
ban a customer

###owners
allow an owner to create a restaurant
allow an owner to delete a restaurant
allow an owner to add a manager for a restaurant
allow an owner to remove a manager for a restaurant
allow an owner to select a category for a restaurant
allow an owner to select multiple categories for a restaurant

###admins
create and delete owners
create and delete restaurants
create and delete tables
create and delete customers

###gems
simple_form
friendly_id

###libraries
form validation - http://parsleyjs.org/


#tables
###customer
name
email
password
phone number

###reservation
date
time start
time length
price

###table
number
capacity
location

###restaurant
name
address
phone
menu

----

###notes:

urls
resy/bolo/tonight
resy/nicholalexander/reservations
