# Ionir Exercise

## Description
* Infra As Code

    The task implements provisioning of system by Terraform.

* AWS API

    Python implementation
## Requirements
* Git: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
* Terraform: https://learn.hashicorp.com/tutorials/terraform/install-cli
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

### Flow
* Create Jenkins-gitops instance:

        git clone
        cd
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
| Planning| 2 hours |1.5 hours|Done|
| README| 1.5 Hour | |InProgress|
| Versioning tests | 1 Hour| 1 hour| Done
| Create base modules Examples | 40 min | |InProgress
| Create system modules | 1 hour|||
| Create Task Module | 1 Hour | | - |
| Create Jenkins GitOps| 3 Hours ||-|
| Test | 2 hours ||-|
| **TOTAL**| **2 Hours** |||

## __TODO of out of the Scope of the Exercise__
* _Infra as code_
    * Lock System for multi-agent system. Maybe DynamoDB
    * Private Repository
    * Users. Authorization
    * Improve Versioning.
    * System Repositories per Environment with tf_var
* _AWS API_

