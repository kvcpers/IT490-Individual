# Dev Log: 4
## Date / Module: June 29, 2026
## Module: 04
## Name: Kacper Pagacz

### GitHub Issue Links Assigned
- [ ] Registration, Login, and Profile System Implementation
  - Acceptance Criteria:
    - Registration page with email, username, hashed password (bcrypt)
    - Login page allowing login via email or username
    - Landing page accessible only when authenticated
    - Profile page with username/email change and password reset
    - Logout functionality that destroys user session
    - Navigation that changes based on authentication status
    - HTML/JS and server-side validation for all forms
    - All database interactions through MQ messages
    - CSS design with moderate thought put into styling
    - User-friendly validation messages
    - Sessions that persist across page reloads and navigation
    - No direct VM-to-VM communication (must use MQ)
    - Passwords stored with bcrypt hashing
  - Started Date: June 24th, 2025
  - Target Completion Date: June 29th, 2025
  - Finished Date: N/A
  - Summary of individual contribution for this entry: Working on implementing the client-side components including HTML forms, CSS styling, and JavaScript validation for the registration and login system. Ensuring all form validations are user-friendly and the design is responsive and modern.

### Noteworthy Learnings and resource links

- Message Queue integration for database operations
  - https://www.rabbitmq.com/tutorials/amqp-concepts.html
### Problems/Difficulties Encountered
- Coordinating all database operations through MQ messages instead of direct database connections
- Ensuring sessions persist correctly across different pages and page reloads


### Positive Shoutout to Team Member(s)
- Team members working on server-side implementation for handling MQ messages properly
- Database team for setting up the user table structure and bcrypt integration


### What can be improved individually?
- Need to improve our understanding of session management and security best practices
- More communication between team members to ensure all components are working correctly together
- Need to improve our understanding of password hashing and its importance in security

### What can be improved as a team?
- We need better coordination between client-side and server-side teams to ensure MQ integration works smoothly
- Communication between team members and the proper assignment of tasks.
- I think reviews of code PR's so we can properly merge and improve code quality.
