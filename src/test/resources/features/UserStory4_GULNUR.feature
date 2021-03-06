
#As a librarian, I should be able to add users from users page.

#AC:  1. add users with all valid info.
#     2. Librarians able to close the add user window with "close" button
#     3. Librarians able to edit user info.
@login
Feature: A librarian should be able to add users from users page.

  Background:
    Given the user is on the login page
    When  the user enters the "Librarian" information
    Then  the Library page should be displayed

  Scenario:A librarian should be able to add users with all valid info.
    Then  the user should see following options
      |Users|
      |Books|
      |Borrowed Books|
    When  the user clicks on "Users" module on the Library page
    Then  the Users page should be displayed

  Scenario:A librarian should be able to add users with all valid info.
    When  the user clicks on "Add User" module on the User page
    And   creates User using following information
      |Full Name |XYZ Student                              |
      |Password  |xyzABC                                   |
      |Email     |xyzABC@yahoo.com                         |
      |User Group|Students                                 |
      |Status    |Active                                   |
      |Start Date|2020-11-01                               |
      |End Date  |2020-11-29                               |
      |Address   |100 November Road,Liverpool,England,L62SH|

    Then  message The user has been created. should be displayed

  Scenario:A librarian should be able to close the add user window with "close" button
    When  the user clicks on "Add User" module on the User page
    And   the user should be able to close the add user window with "close" button

  Scenario:A librarian should be able to edit user info
    Then the user should be able to click an user info in Users Page
    Then the user should be able to edit info in new window
    Then the user should be able to click Save changes button
    Then message The user updated. should be displayed


