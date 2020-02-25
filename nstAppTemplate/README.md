# nstAppTemplate

A Flutter project that aims to welcome the "new student" to a new school.

## Add a Page
To add a page with a router: 
 - Import the file into main.dart
 - Add a map to the List of "routers"
    - This should include name and route
 - Add the directRoute function
    - Add the index of the page in the "case" part
    - Add a return following "return MaterialPageRoute(builder: (context) =>" + your page's function