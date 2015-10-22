# Sinatra Url Shortener

Basic url-shortner MVC application using Sinatra controllers with session enabled and session helper methods, User and Url data models importing from ActiveRecord::Base, an ugly View layer to add, index and login/logout, and BCrypt for password encrypting that overrides the #password getter and setter methods to either write to the database or evaluate whether the password matches what's stored.

# How to install

`bundle install`



## List of ideas for new features

User:

* URL shortening: users can shorten URL anonymously or create accounts for more advantages.

* Account activation: users must verify their e-mail to activate account.

* Reset password feature: user can reset password if he/she forgot it.

* Graphical statistics: registered users can generate graphical statistics for own URLs for any period of time.

* AJAX-ed interface: modern jQuery-driven interface.

Admin:

* Enable/disable anonymous shortening: administrator can disable anonymous shortening.

* Enable/disable user registration: administrator can enable/disable new user registration.

* Enable/disable API: administrator can disable API.

API:

* Shortening API: allows applications to automatically create short URLs.
