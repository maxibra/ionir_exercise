# Ionir Exercise

## Description
* Infra As Code

    The task implements provisioning of system by Terraform.

* AWS. List Services

    Python implementation
## Requirements
* Git: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
* Terraform (Above version v0.12): https://learn.hashicorp.com/tutorials/terraform/install-cli

    Optional:

    * Tool to create token to work with MFA's Role in AWS: https://github.com/broamski/aws-mfa
# __Infra As Code__
### Structure
* __Base modules__

    * Repository: https://github.com/maxibra/terrafor_modules_base
    * Description:
        * Contains modules with local implementations of base terraform's resources

        ![image info](./images/Terraform_Base_structure.png)

* __System modules__
    * Repository: https://github.com/maxibra/terraform_modules_system
    * Description:
        * Contains modules of big parts of a system or whole system 
        * For Example: Network, jenkins system
* __Management__
    * To update any module create branch for it
    * Remove all modules except you are commit
    * Create release based on the branch
        * NOTE: Please describe the Affected Module
    * Merge the branch to master(main)

### Flow
* Create Jenkins-gitops instance:

        git clone https://github.com/maxibra/ionir_exercise.git
        cd ionir_exercise/infra_as_code
        terraform init
        terraform plan
        terraform apply

* Create/Update environment module in https://github.com/maxibra/terraform_modules_system
* Commit and pull request
* The Jenkins will run the triggered environment update


## __TODO__ :
|ToDo|Plan|Real|Status|
| :- | :-: | :-: | :-: |
| Planning| 2 hours |3 hours|Done|
| README| 1.5 Hour |1.5 Hours |Done|
| Versioning tests | 1.5 Hours| 2.5 Hours| Done|
| Create base modules Examples | 40 min | 1.5 Hours |Done|
| Create system modules | 1 Hour| 1 Hour|Done|
| Create and Run Task Module | 1 Hour |3.5 Hours | Done |
| Create Jenkins GitOps| 3 Hours ||Not Implemented|
| Configuration and Test | 2 hours ||Not Implemented|
| **TOTAL**| **12 Hours** |**13 Hours**||


## __TODO of out of the Scope of the Exercise__
* _Infra as code_
    * Lock System for multi-agent system. Maybe DynamoDB
    * Private Repository
    * Users. Authorization
    * Improve Versioning.
    * System Repositories per Environment with tf_var
    * Script to create README of modules from variables and outputs


# __AWS. List Services__
## Description

   Collect services details from AWS
   Python implementation
## Requirements
* python 3.8 
* pipenv
* Optional:

    * Tool to create token to work with MFA's Role in AWS: https://github.com/broamski/aws-mfa

## Running
* Change dir to your project's directory
* Create token to run the tool without MFA

        git clone https://github.com/broamski/aws-mfa
        cd aws-mfa
        ./aws-mfa --profile <profile_name> --long-term-suffix none --short-term-suffix test --device <ARN_MFA_Device_of_User> --assume-role <ARN_AWS_Role> --role-session-name run_wo_mfa

* Install and run the tool to collect service's details

        git clone https://github.com/maxibra/aws-list-services.git
        pipenv install
        pipenv shell
        python setup.py install
        ./aws-ls --help


## __TODO__ :
|ToDo|Status|
| :- | :-: |
| Code| Done|
| Pagination| -|
| Async| -|
| API Throttling| -|



