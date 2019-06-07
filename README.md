## Overtime App

## Key Requirement: company need documentation that salaried employees did or did not gt overtime each week


## Models 
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- x AuditLog

## Features: 
- x Approval Workflow
- SMS Sending -> link to approval or overtime input -> integrate with Heroku scheduler
- X Administrative admin dashboard
- X Block non admin and guest users
- Email summary to manager for approval
- x Needs to be documented if employee did not log overtime

## Ui -> formatting

- X Bootstrap -> Formatting
- X Icons for Font Awesome
- X Update the styles for forms

## Refactor TODOS: 
- X Add full_name method for users
- Refactor user associations integration test in post_spec
- X Refactor posts/_form for admin user with status
- X Fix post_spec.rb - To use Factories
- Fix post_spec.rb to have correct user reference and update

## GEMs Used: 

- Adminstrate - To set up administrator users
- Devise - For User Authentication  
- Bourbon
- Twilio - for sms messaging 
- dotenv - for password security  
- Pundit
- Kaminari - for pagination



## General TODOS:  

- Implement AJAX for kaminari pagination 

- Fix SMS messaging, so that it is functional

- Integrate validation for phone attribute in User:
  # No spaces or dashes
  # exactly 10 characters 
  # all characyters have to be a number