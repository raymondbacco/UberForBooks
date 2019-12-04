WRITEUP:

Abstract:

For our final project, our team decided to follow the prompt “Uber but for….”. 
We thought that we could take uber’s idea of delivering a service and apply it to renting books. 
Renting books from the student store is really expensive and buying it off of Free and for Sale (a facebook marketplace) 
means you’re stuck with a book you don’t need after the class is over. In order to solve this problem we decided to create 
Uberforbooks, a platform where you can rent a book for a low price and return it to the owner once you’re done. 

Models:

Books
  -Has one owner (user)
  -Many reviews
User
  -Has many books
  -Has many rented 
  -name
Rented
  -Has many to many relationships
    -Has many user
Review
  -Belongs to Rented
  -Review rating 


Features:

  -Devise Feature for user login
  -Display of  location and latitude of a book
  -display of books that can be rented
  -implementation of fake users



Division of labor:

Raymond Bacco: 
 -Implemented devise portion with sign-up, log-in, and log-out
 -Buttons 
 -Started and hosted git repository
 -Worked on the views 

Hang Zhou:
 -Modify models and model relationships
 -Added bootstrap
 -Implemented faker, generate the initial data

Haitao Zhu:
 -Setup the models’ structure.
 -Built many to many model relationships.
 -Provide the control structure for further implementations.


Alexia Britsch:
 -Came up with idea
 -Implemented API
 -Implemented places (controllers, views, model, etc)
 -Worked on some of the powerpoint
 -Worked on some of the write-up

Karina Patel:
 -Implemented powerpoint 
 -General rails debugging 
 -Google Maps API debugging



