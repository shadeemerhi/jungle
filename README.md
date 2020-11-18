# Jungle

A mini e-commerce application built with Rails 4.2.

## Final Product

### Browsing the products and categories
!["Browsing the products and categories"](https://github.com/shadeemerhi/jungle/blob/master/docs/home.gif)

### Adding items to cart
!["Adding items to cart"](https://github.com/shadeemerhi/jungle/blob/master/docs/add-items.gif)

### Stripe payment
!["Stripe payment"](https://github.com/shadeemerhi/jungle/blob/master/docs/payment.gif)

### Admins can access product and category management pages
!["Admin product and category management"](https://github.com/shadeemerhi/jungle/blob/master/docs/admin-access.gif)

### Admins can create new products
![" Admins can create new products"](https://github.com/shadeemerhi/jungle/blob/master/docs/admin-pnew.gif)

### Admins can create new categories
!["Admins can create new categories"](https://github.com/shadeemerhi/jungle/blob/master/docs/admin-cnew.gif)

### User logout
!["User layout"](https://github.com/shadeemerhi/jungle/blob/master/docs/logout.gif)


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
