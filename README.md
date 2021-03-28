# Ionir Exercise

## Description
* Infra As Code

    The task implements provisioning of system by Terraform.

* AWS API

    Python implementation
## Requirements
* Git: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
* Terraform (Above version v0.12): https://learn.hashicorp.com/tutorials/terraform/install-cli
* python 3.8
* pipenv

    Optional:

    * Tool create token to work with MFA's Role in AWS: https://github.com/broamski/aws-mfa
## __Infra As Code__
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


## __AWS_API__

empty

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
* _AWS API_

