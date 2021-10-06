# Introduction
This document give extras informations on the usage of AWS and the used pipeline


# AWS
The project work with 3 AWS:
- RDS to configure a database named projectDB
- Elastic BeanStalk to generate an evironnement for the API part of the project, 
offering environment variables(App name: final-app, Environment name : Finalapp-env) 
- S3 to host front end fonctionnalities (bucket name: bucket-kirovo), and storing the API part used by EB. (bucket name: elasticbeanstalk-eu-central-1-087527893007)

The front and back-end communicates throught different urls:

Url:
- front-end: http://bucket-kirovo.s3-website.eu-central-1.amazonaws.com
- back-end: http://finalapp-env.eba-npxzf27b.eu-central-1.elasticbeanstalk.com/

Every instances are publicly accessible

For more information about eb configuration please follow this next path: 
udagram-api\.elasticbeanstalk\saved_configs\Finalapp-env-sc2.cfg.yml

# Circle CI pipeline
At the root of the project is located a .circleci folder containing a config.yml 
file. This document have been written follawing this logic:
- Declaring necessary tools as orbs
- Use a pre-built docker image to buil the system
- Setup tools on the image
- install packages to the image displayed on the front-end and back-end 
package.json files
- Build files of front-end and back-end for production.
- Deploy front-end app using deploy.sh file located in bin folder accessing to AWS 
CLI commands and back-end app using EB CLI commands

Every used scripts are on respective package.json files.