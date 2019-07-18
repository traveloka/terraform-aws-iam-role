<!--- 
See how to make a good Pull Request at : https://github.blog/2015-01-21-how-to-write-the-perfect-pull-request/ 
--->

### Community Note
<!---
No need to modify anything within this section.
--->
* Please vote on this pull request by adding a 👍 [reaction](https://blog.github.com/2016-03-10-add-reactions-to-pull-requests-issues-and-comments/) to the original pull request comment to help the community and maintainers prioritize this request
* Please do not leave "+1" comments, they generate extra noise for pull request followers and do not help prioritize the request

***

<!---
State an issue that you address on this PR.
--->
Fixes #0000

***

Release note for [CHANGELOG](https://github.com/traveloka/terraform-aws-iam-role/blob/master/CHANGELOG.md):
<!--
If the changes are not user facing, just write "NONE" in the release-note block below.
-->

```release-note
NOTES:

* Any Notes regarding your submitted PR, like breaking changes or else.

FEATURES:

* **New Source:** `aws_000_0000` ([#references_to_issue](./))

ENHANCEMENTS:

* feature: Add support for new version of AWS API

BUG FIXES:

* Prevent error from evil bugs
```

***

Output from `terraform plan` command from changes you propose.

```
$ terraform plan

```

<!---
Credit: 
This template is modified version of https://github.com/terraform-providers/terraform-provider-aws/blob/master/.github/PULL_REQUEST_TEMPLATE.md

Created: May 27, 2019 
Last updated: July 11, 2019
--->
