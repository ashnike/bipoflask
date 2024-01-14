# Continuous Integration and Deployment of Flask App using AWS CodePipeline
This project demonstrates the utilization of AWS CodePipeline for continuous integration and deployment of a Flask application.

## Files Included:

- **buildspec.yml:** Contains build configuration.
- **appspec.yml:** Contains deployment configuration.
- **test:** Test file located in the home directory for monitoring and alerts.
- **scripts:**
  - **before_install:** Script that executes before the package is installed. Useful for preparatory tasks or checks before installation.
  - **after_install:** Script executed after a successful package installation. Often used for additional setup or configuration tasks.
  - **app_start:** Script to start the application. Triggered after installation or when launching the application.
  - **validate_service:** Script focused on validating or checking the status of the service after deployment.

## Deployment Flow:

1. **Build Phase (CodePipeline):**
   - AWS CodePipeline is configured to initiate the build process according to the specifications defined in `buildspec.yml`.

2. **Deployment Configuration (AppSpec):**
   - `appspec.yml` defines the deployment configuration necessary for deploying the Flask application.

3. **Nginx for Proxy and Redirection:**
   - Nginx is utilized to redirect proxy for the Flask app, ensuring proper handling of incoming requests.

4. **Monitoring and Alerts:**
   - Monitoring and alerts are set up using AWS CloudWatch and AWS SNS for tracking and receiving notifications about events and performance.

## Lifecycle Scripts Overview:

### before_install:
This script executes preparatory tasks or checks before the package installation process begins.

### after_install:
Executes additional setup or configuration tasks following a successful package installation.

### app_start:
Initiates the application, typically triggered after installation or when launching the application.

### validate_service:
Validates or checks the status of the deployed service to ensure it's running properly.
