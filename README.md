## Overtime App

## Key Requirement: company need documentation that salaried employees did or did not gt overtime each week


## Models 
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI

## Features: 
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- Administrative admin dashboard
- Email summary to manager for approval
- Needs to be documented if employee did not log overtime

## Ui -> formatting

- X Bootstrap -> Formatting

## Refactor TODOS: 
- X Add full_name method for users
- Refactor user associations integration test in post_spec