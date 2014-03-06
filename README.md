== README

# Q+A Application 

## Summary
The intention of this project is to gain a strong working knowledge of a Rails 4.0.2 HABTM (has_many_and_belongs_to_many)
model relationship. The Devise Gem is used for User authoriztion and uses zurb foundation as the responsive 
front-end framework.

Application begins with the 'Index' action, showing all Questions. 

![All Questions and Answers](https://github.com/dbaynes/Q-A/blob/master/public/Q%2BA_Index.png?raw=true)

All questions and answers can be edited or deleted from here. 

An optional link is provided to 'index' only the logged in users Questions.

![User Questions and Answers](https://github.com/dbaynes/Q-A/blob/master/public/User_Index.png?raw=true)

Experience and expertise gained here will be applied to the class project Klusters.

## Environment
- ruby 2.1.0
- rails 4.0.2
- Devise 3.2.3
- Sqlite3
- zurb-foundation 4.3.2


## Developer
- David Baynes

## Project References

- http://craiccomputing.blogspot.com/2013/11/habtm-relationships-in-rails-4.html
- http://www.lynda.com/Ruby-Rails-tutorials/Many-many-associations
- http://codeconnoisseur.org/ramblings/rails-has-and-belongs-to-many-habtm-demystified
- http://craiccomputing.blogspot.com/2013/11/habtm-relationships-in-rails-4.html

## Questions

- When generating scaffolding ex: rails new app-name, Rails 4.1.0.rc1 is the default Rails version bundled
in the gemfile. When adding mini-test and mini-test-rails gems, I fell into dependency hell. I then changed
rails version in the gemfile to 4.0.2 as I have been using on other assignment. This caused "undefined method 
'configure' for #<APPLICATION-CLASS_NAME::.....> I couldn't recover from this and had to start over by specifying
the rails version in the scaffold command: rails _4.0.2_ new app-name. RPITB - R for Royal :-) What special 
configuration is set and possibly needs to be reset when once generating an application and bundling Rails 4.1.0.rc1?  


=======

Date: Tuesday March 4, 2014



