# README

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

To set up:

* Clone to your machine
* Run 'Bundle install' in terminal in the project directory
* Run 'rails db:create'
* Run 'rails db:migrate'
* Run 'rails db:seed' to populate database with fake data

### Contributions

#### AJAX additions

1. Add Ajax to products#index page to take form input and update cart without refresh.
1. Product details are hidden and can be displayed using Ajax by clicking on details in the product card.
1. Cart item deletion is handled through Ajax now, cart item total and cart price total are updated as well through Ajax.

#### Refactoring

1. Add validation for quantity field, input must be greater than zero
1. Add flash messages for signing in, out, and up.
1. Add validations to product, add image column to products table
1. Add edit and delete for products for admin users, edit is currently broken because product price field does not take decimals.
1. Allow for product price to be other than whole number amounts, forms for new and edit products now work with decimals.
