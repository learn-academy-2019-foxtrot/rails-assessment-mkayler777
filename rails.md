# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer:
    Model:  manages data of application
    View: what the user sees
    Controller:  in between view and model

  Researched answer:
    Model: contains data for application. They are Ruby classes and talk to the database, store and validate data, perform the business logic. Can be reused as they have no knowledge of user interfaces.
    View:  generates the user interface which presents data to the user.
           passive
           many views can access the same model for different reasons.
    Controller:  receives events from outside world.
                 interacts with model.
                 displays appropriate view to user.
    MVC works together.

2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the route in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the Controller in the file statics_controller.rb
  ```
  class StaticsController < ApplicationController
    def about
      render "about.html.erb"
    end
  end
  ```

  Step 3: Create the View in the file about html.erb
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'
  DISPLAYS A LIST OF ALL USERS

/users/1      method="GET"     # :controller => 'users', :action => 'show'
  DISPLAYS A SPECIFIC USER

/users/new    method="GET"     # :controller => 'users', :action => 'new'
  RETURNS AN HTML FORM FOR CREATING A NEW USER
  
/users/       method="POST"    # :controller => 'users', :action => 'create'
  CREATES A NEW USER
  
/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
  RETURNS AN HTML FORM FOR EDITING A USER
  
/users/1      method="PUT"     # :controller => 'users', :action => 'update'
  UPDATES A SPECIFIC USER
  
/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
  DELETES A SPECIFIC USER
  

3b. Which of the above routes must always be passed params and why?

   GET - params are encoded in the URL

4. What is the public folder used for in Rails?

  Your answer: makes things accessible through the URL.
            For static files (404 and 500 pages)

  Researched answer:  Anything in the public folder is accessible by the rest of the                              application just by asking for it in the URL.

5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"
  
GET "/game/:guess" => "main#game"

6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer:  Interface for user input.

  Researched answer:
    Action is the HTML attribute word you can add to the HTML form tag when you want to send the form data to the specified URL.

<%= form_tag action: '/main/game', method: :get do %>
...
<% end %>

7. Name two rails generator commands and what files they create:

  Your answer:
  1. rails new myapp -d postgresql -T tests:       Creates a new Rails app
  2. rails db: create:   makes databases with applications info and stores info while running tests.

  Researched answer:
 rails generate model Bike
 rails generate controller Bikes
 rails generate migration (name ofthe resource) (attributes)
 rails generate resources rails generate rspec: request creating_bikes

8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. Rails was written by David Heinemeier Hansson

2.  Metaprogramming is used well in Rails.  Metaprogramming is a programming technique in which computer programs have the ability to treat programs as their data.  It means that a program can be designed to read, generate, analyse or transform other programs, and even modify itself while running.

3. Rails is most efficient if the suggested naming conventions are followed. 

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer:
    cookies allow info to be stored between page refreshes
    
  Researched answer:
   Cookies store variables, which allows them to persist between page refreshes or redirects.
   Cookie =  is a small text file (key) that a web server stores on your computer (browser), and they are used for tracking purposes.
   Session = a server side storage of information that stores information of the users interaction with the website of web application.  A session ends when the user closes the browser of after leaving the site.
   (Don't store stuff in the session)







