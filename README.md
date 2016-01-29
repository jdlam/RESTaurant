# [RESTaurant](http://rest-aurant-pos.herokuapp.com/)

Servers can add tables and add orders
Admins can manage servers and menu items
Chefs can keep track of all of the orders currently being made

### Approach

In a restaurant, the customers are demanding and employees don't have time to waste fiddling with the software trying to place orders. Thus, I wanted this POS system to be as intuitive as possible for all employees. The admin's page, the servers' page, and the kitchen's page are all separate and I have not included buttons to go between them. Adding links between the pages would clutter the screen even more, which would be a distraction and a waste of space for the user.

I tried to limit the number of clicks that a user had to input information, such as servers adding a new order to a party, or the kitchen indicating that they've finished an order for a table.

This app was meant to be used on mobiles for servers and tablets for the kitchen.

### User Stories
- User is a Server
  - Can See all the parties currently being served
  - Presses the add a party button, which allows them to create a party
  - Presses a Party
    - User can now edit or delete the Party
    - User can add more orders to the Party
    - User can print out the receipt for the Party
- User is an admin
  - Can press the categories button, and add, edit, or delete food categories
  - Can press the menu items button to add, edit or delete food items
  - Can press the servers button to add, edit, or delete servers.
- User is the kitchen
  - Can clearly see the orders after they've been placed, starting with the oldest party first
  - Can press the food is ready button to make the order disappear

### How It Works

The front end incorporates HTML, JavaScript, CSS, and Materialize, both the CSS and the JS. The back end is made from a combination of PostGreSQL and Ruby, using gems such as Sinatra and ActiveRecord to keep the page dynamic.

### Plans for the Future

- Get the formChecker.js to work so users can't submit incomplete forms and break the app
- Figure out why I get this 403 error from cdnjs. Check the console for almost every page. This error keeps popping up...
- Find a way to edit/delete multiple entries at once.

### Notes
Author: Jonathan Lam
Last Updated: 8/30/2015
