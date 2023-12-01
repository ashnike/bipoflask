# bipoflask
This  project showcases use of aws codepipeline for continuous integration and deployment of flask app.
I have used aws codepipeline.
Project
buildspec.yml file contains build configuration
appspec.yml file contains deployment configuration
i am using nginx to redirect proxy for the flask app .
test file is the test file in the home directory
for monitoring and alerts I have set cloudwatch and aws sns.

 scripts :
 before_install :This script runs before the package is installed. It is useful for performing preparatory tasks or checks that need to be completed before the actual installation process begins.
 after_install : This script executes after the package is installed successfully. It's often utilized to perform additional setup or configuration tasks needed for the application. 
 app_start: This script is used to start the application. It's generally triggered after installation or when the application needs to be launched
 validate_service :This script is focused on validating or checking the status of the service after it has started or been deployed.
