## v1.0.1

ENHANCEMENTS:

- relax provider versions for terraform 0.12 readiness

## v0.6.1

BUG FIXES:
- Fix Lambda assume role policy.


## v1.0.0

FEATURES:
- Add crossaccount submodule and enable resource tagging
	crossaccount submodule is for cross account communication between Traveloka products, don't be confused with external submodule
	crossaccount submodule enforces /crossaccount/ prefix on role path
	common tags are embedded in all modules, these are the tags that enabled:
	- Name
	- Description
	- Environment
  - ProductDomain
	- ManagedBy (terraform)
- Service tag is enforced in crossaccount, instance, and lambda module
- Common tags and Service tag can't be overriden
Removed AWS provider configuration inside the module.

BUG FIXES:
- Fix examples and some README

Breaking Changes

- New required variables:
  * ProductDomain, for tagging
  * Environment, for tagging

## v0.6.0

BUG FIXES:
- Change external module to only used by 3rd party

## v0.5.1

ENHANCEMENTS:
- Support Lambda Edge

## v0.5.0

MAJOR CHANGE IN IAM ROLE FOR EXTERNAL ACCOUNTS:

ENHANCEMENTS:
- Remove variable account_id
- Add variable principal_identifiers
- Allow multiple external principal_identifiers to assume role.

## v0.4.4

ENHANCEMENTS:

- Upgrade terraform-aws-resource-naming module version on lambda role to the latest bersion (v0.7.1)


## v0.4.3

BUG FIXES:

- Region keep prompted. Added default value (ap-southeast-1) since IAM Role will be created in us-east-1 anyway

## v0.4.2

ENHANCEMENTS:
- Remove Terraform version constraint

## v0.4.1

ENHANCEMENTS:
- Downgrade requirement to Terraform 0.10.8
