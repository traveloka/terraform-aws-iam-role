## v1.0.3 (Aug 6, 2020)

ENHANCEMENTS:

* Remove unused "region" variable

## v1.0.2 (Aug 6, 2019)

BUG FIXES:

* Update principal to be a list

## v1.0.1 (Jun 18, 2019)

ENHANCEMENTS:

* relax provider versions for terraform 0.12 readiness

## v1.0.0 (May 2, 2019)

NOTES:

* **Breaking Changes!**
	* New required variables:
		* ProductDomain, for tagging
		* Environment, for tagging

FEATURES:

* Add crossaccount submodule and enable resource tagging
	* crossaccount submodule is for cross account communication between Traveloka products, don't be confused with external submodule
	* crossaccount submodule enforces /crossaccount/ prefix on role path
	* common tags are embedded in all modules, these are the tags that enabled:
		* Name
		* Description
		* Environment
		* ProductDomain
		* ManagedBy (terraform)
* Service tag is enforced in crossaccount, instance, and lambda module
* Common tags and Service tag can't be overriden
* Removed AWS provider configuration inside the module.

BUG FIXES:

* Fix examples and some READMEs


## v0.6.0 (Oct 8, 2018)

BUG FIXES:

* Change external module to only used by 3rd party

## v0.5.1 (Sep 13, 2018)

FEATURES:

* Support Lambda Edge

## v0.5.0 (Sep 12, 2018)

NOTES:
* **MAJOR CHANGE IN IAM ROLE FOR EXTERNAL ACCOUNTS**
	* Remove variable account_id
	* Add variable principal_identifiers
	* Allow multiple external principal_identifiers to assume role.

## v0.4.4 (Aug 14, 2018)

ENHANCEMENTS:

* Upgrade terraform-aws-resource-naming module version on lambda role to the latest bersion (v0.7.1)

## v0.4.3 (May 23, 2018)

BUG FIXES:

* Region keep prompted. Added default value (ap-southeast-1) since IAM Role will be created in us-east-1 anyway

## v0.4.2 (Apr 24, 2018)

ENHANCEMENTS:

* Remove Terraform version constraint

## v0.4.1 (Apr 23, 2018)

ENHANCEMENTS:

* Downgrade requirement to Terraform 0.10.8

## v0.4.0 (Apr 17, 2018)

FEATURES:

* Supports IAM Role for Lambda

## v0.3.0 (Apr 11, 2018)

FEATURES:

* New variable: `role_max_session_duration`

ENHANCEMENTS:

* Update all `README.md` files
* Update examples using `role_max_session_duration` argument

## v0.2.0 (Apr 5, 2018)

FEATURES:

* Supports IAM Role for Instance Profile creation

## v0.1.0 (Apr 3, 2018)

NOTES:

* Initial Release
