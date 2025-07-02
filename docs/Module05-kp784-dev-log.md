# Dev Log: 5
## Date / Module: June 29, 2025
## Module: 05
## Name: Kacper Pagacz

### GitHub Issue Links Assigned
- [ ] System Service Creation for MQ Consumers
  - Acceptance Criteria:
    - Create systemd service files for DB MQ Consumer
    - Create systemd service files for API MQ Consumer
    - Services start automatically on system boot
    - Services start only when network is available
    - Services restart automatically if processes fail or terminate
    - Upload .service files to group repository with appropriate names
  - Started Date: July 1st, 2025
  - Target Completion Date: July 1st, 2025
  - Finished Date: July 1st, 2025
  - Summary of individual contribution for this entry: Working on creating systemd service files for the MQ consumers to ensure them to run reliably in the background, start automatically on boot, and restart if they fail. I ran it as a extra node 

### Noteworthy Learnings and resource links
- Systemd service file configuration and management
  - https://www.freedesktop.org/software/systemd/man/systemd.service.html

### Problems/Difficulties Encountered
- Determining the correct network dependency since we can't directly check the MQ service on a different machine
- Configuring proper restart policies to handle different types of failures
- Setting up the correct working directory and environment variables for the consumers
- Ensuring services start in the correct order and with proper dependencies
- Testing service reliability and restart behavior in different failure scenarios

### Positive Shoutout to Team Member(s)
- Team members working on the core DB and API MQ consumers for providing the correct paths and requirements
- Group members creating example/test consumers for helping test the service configurations
- Team coordination for ensuring all service files follow consistent naming and configuration standards

### What can be improved individually?
- Need to learn more about advanced systemd configuration options for better service management
- Need to improve understanding of network dependency management in distributed systems

### What can be improved as a team?
- Better documentation of service requirements and dependencies between different components
- More coordinated testing of service startup sequences and failure scenarios
- Communication between the team