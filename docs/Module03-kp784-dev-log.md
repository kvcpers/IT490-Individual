# Dev Log: 3
## Date / Module: [Current Date] / Module 3
## Name: Kacper P

### GitHub Issue Links Assigned
- [ ] Central Logging System Setup
  - Acceptance Criteria:
    - Set up rsyslog client configuration
    - Configure log forwarding to central server
    - Install and configure Tailscale for secure networking
    - Set up firewall rules with UFW
    - Create user accounts for team members
    - Configure hostname for node identification
  - Started Date: [Current Date]
  - Target Completion Date: [Current Date + 1 week]
  - Finished Date: N/A
  - Summary of individual contribution for this entry: 
    Created a comprehensive setup script that automates the configuration of a central logging system. The script includes hostname configuration, user creation, package installation, firewall setup, Tailscale installation, and rsyslog client configuration for forwarding logs to a central server at 100.93.223.65:514.

### Noteworthy Learnings and resource links
- Centralized logging system architecture and implementation
  - https://www.rsyslog.com/doc/v8-stable/configuration/modules/omfwd.html
- Tailscale VPN setup and configuration for secure networking
  - https://tailscale.com/kb/1031/install-scripts/
- UFW firewall configuration and management
  - https://help.ubuntu.com/community/UFW
- rsyslog client-server communication and log forwarding
  - https://www.rsyslog.com/doc/v8-stable/configuration/modules/omfwd.html
- System administration automation with bash scripting
  - https://www.gnu.org/software/bash/manual/bash.html

### Problems/Difficulties Encountered
- Understanding the proper rsyslog configuration syntax for log forwarding
- Determining the correct firewall rules for secure communication
- Setting up proper user permissions and access controls
- Configuring Tailscale for automatic startup and authentication
- Ensuring proper error handling in the setup script
- Managing dependencies between different system components

### Positive Shoutout to Team Member(s)
- N/A (Individual assignment)

### What can be improved individually?
- Add more comprehensive error handling and validation in the setup script
- Implement logging and monitoring for the setup process itself
- Create backup and rollback procedures for configuration changes
- Add configuration validation and testing procedures
- Improve documentation with more detailed explanations
- Add support for different Linux distributions beyond Ubuntu

### What can be improved as a team?
- N/A (Individual assignment) 