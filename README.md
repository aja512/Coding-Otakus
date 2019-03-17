# Coding-Otakus
This project is about Hostel Management Web application using Python tools and database
# Coding-Otakus
Our project is about Hostel Management Web application using Python tools(Python IDE:Spyder,Qt Designer) and database(PhpMyAdmin).

  ## Hostel Management Concept:
  An hostel management application makes use of Object Oriented Analysis and Design.Minimal Code is written in the GUI and the entities are   decoupled as well. The interface is created using Qt Designer.This project was created during Mumbai Hacakathon 2019.
  #
  The Class Diagram explains the Database Schema used during project creation.
  ## Class Diagram:-
   <img src="https://github.com/aja512/Coding-Otakus/blob/master/HOSTELLL%20(1)%3D%3D%3D.png">
   #
  ## Actors:-
  The actors include the following:
  #
    1.  Warden(Main Administrator)
    2.  Security Guard
    3.  Receptionist
  ## User Cases:-
  After determining the actors, the second step in use case analysis is to determine the tasks that each actor will need to do with the       system. Each task is called a use case because it represents one particular way the system will be used.
  #
  #### In other words, only those use cases are listed that actors will need to do when they are using the system to solve the customer’s         problem.
  #
  ### 1. Warden:
  	❏ Add/Remove a new student to the hostel.
        Allocate/Deallocate rooms to students.
        Check how many rooms are completely/partially occupied for allocation.
    ❏ Update student's information whenever applicable.
    ❏ All of the Security Guard's and Receptionist's information .
    ❏ Adding/Removing Security Guard/Receptionist.
  
   #
  ### 2. Security Guard:
    ❏ Add/Delete Visitor's information in the database.
    ❏ Restrict access for visitors if they've crossed the limit of 1 visit/week.
    ❏ View the student's name,id and room number.
    
 #
  ### 3. Receptionist:
    ❏ Only access the rooms of a given student.
    ❏ View the student's name and room number.
    
   #
 ## How to Run:-
    
1. Install:
#
    Python 3.7.2
    Spyder 3.3.2
    Qt Designer v5
    WAMP Server for PHPMyAdmin
    Python database connector
#
2. Open Qt Designer and design intefaces like log in page,Menu,etc. ;just as shown below:
#
Login Page:
 <img src="https://github.com/aja512/Coding-Otakus/blob/master/login.JPG">
Choose one option and Click on “GO”

If you select “Add a Student”
 <img src="https://github.com/aja512/Coding-Otakus/blob/master/after%20login.JPG">
Then click on “Submit”
If you select “View a Student’s Details”
  <img src="https://github.com/aja512/Coding-Otakus/blob/master/stud%20added.JPG">
You can edit information by clicking on “Edit”
<img src="https://github.com/aja512/Coding-Otakus/blob/master/view%20stud%20detail.JPG">
If you select “Visitor’s Entry”
  <img src="https://github.com/aja512/Coding-Otakus/blob/master/visiter's%20info.JPG">
Then you can also add exit time on next
  <img src="https://github.com/aja512/Coding-Otakus/blob/master/visiter%20exit.JPG">
If you select “Room Details” it will display  Details of student allocated in that room 
  <img src="https://github.com/aja512/Coding-Otakus/blob/master/room%20details.JPG">
 

