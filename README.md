# E-Commerce Upgrade and Refactoring project

## by Nate Cottle

### Desciption

E-commerce site. Uses `bcrypt` and `materialize`.

### Set Up and Installation

To set up:

* Clone to your machine
* Run 'Bundle install' in terminal in the project directory
* Run 'rails db:create'
* Run 'rails db:migrate'
* Run 'rails db:seed' to populate database with fake data
* Run 'rails s' to start the server and go to localhost:3000 in your preferred browser

To access admin permissions:

* Run 'rails c' to bring up rails console
* Type 'User.create(name: "name", email: "whatever@email.com", password: "yourpassword", admin: true)' and hit enter
* Log into the local site using the account created in the console

### Contributions

#### AJAX additions

1. Add Ajax to products#index page to take form input and update cart without refresh.
1. Product details are hidden and can be displayed using Ajax by clicking on details in the product card.
1. Cart item deletion is handled through Ajax now, cart item total and cart price total are updated as well through Ajax.
1. Product deletion on admin side is handled through Ajax

#### Refactoring

1. Add validation for quantity field, input must be greater than zero
1. Add flash messages for signing in, out, and up.
1. Add validations to product, add image column to products table
1. Add edit and delete for products for admin users, edit is currently broken because product price field does not take decimals.
1. Allow for product price to be other than whole number amounts, forms for new and edit products now work with decimals.
1. Add flash message for creating, updating, and deleting products for admin.
