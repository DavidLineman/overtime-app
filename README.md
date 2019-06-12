## Overtime App

## Key Requirement: company need documentation that salaried employees did or did not gt overtime each week


## Models 
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- x AuditLog

## Features: 
- x Approval Workflow
- X SMS Sending -> link to approval or overtime input -> integrate with Heroku scheduler
- X Administrative admin dashboard
- X Block non admin and guest users
- X Email summary to manager for approval
- x Needs to be documented if employee did not log overtime
- X Need to update end date when confirmed. 
- X Need to update audit log status when item is rejected.
- X Home icon
- X Update buttons on employee homepage
- X Update buttons to include time span
- X Update button sort order on employee homepage
- X Remover unnecessary navbar buttons for admins
- X Fix Admin dashboard bug
- X Implement Honeybadger
- Check on data issue and verify correct hours are being tracked.


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