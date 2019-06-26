---
name: Bug Report
about: Report if something is not working as expected
labels: bug
title: "[BUG] <add_your_clear_and_concise_title_here>"
---


### Community Note
<!---
No need to modify anything within this section.
--->

* Please vote on this issue by adding a 👍 [reaction](https://blog.github.com/2016-03-10-add-reactions-to-pull-requests-issues-and-comments/) to the original issue to help the community and maintainers prioritize this request
* Please do not leave "+1" or "me too" comments, they generate extra noise for issue followers and do not help prioritize the request
* If you are interested in working on this issue or have submitted a pull request, please leave a comment


### Summary
<!---
A clear and concise description of what the bug is.
Don't forget to fill additional data below in order to help us helping you.
--->


### Terraform Version and Terraform AWS Provider Version
<!--- 
Please run `terraform -v` to show the Terraform core version and provider version(s). 

If you are not running the latest version of Terraform or the provider, please upgrade because your issue may have already been fixed. [Terraform documentation on provider versioning](https://www.terraform.io/docs/configuration/providers.html#provider-versions).
--->

```
Terraform vX.XX.XX
+ provider.aws vX.XX.XX
```


### Affected Resource(s)
<!---
Please list the affected resources and data sources.
--->

* aws_XXXXX


### Terraform Configuration Files
<!---
Information about code formatting: https://help.github.com/articles/basic-writing-and-formatting-syntax/#quoting-code
--->

```hcl
# Copy-paste your Terraform configurations here.
# For large Terraform configs, please use a service like Google Drive and share a link to the ZIP file.
```


### Expected Behavior
<!---
What should have happened?
--->


### Actual Behavior
<!---
What actually happened?
--->


### Screnshots
<!---
If applicable, add screenshots to help explain your problem.
--->


### Steps to Reproduce
<!---
Please list the steps required to reproduce the issue.
--->

1. `terraform apply`
2. `<any_command_you_executed>`


### Important Factoids
<!---
Are there anything atypical about your accounts that we should know? 
For example: Running in EC2 Classic?
--->


### References
<!---
Information about referencing Github Issues: https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests

Are there any other GitHub issues (open or closed) or pull requests that should be linked here? Vendor blog posts or documentation? For example:

* https://aws.amazon.com/about-aws/whats-new/2018/04/introducing-amazon-ec2-fleet/
--->

* #0000


<!---
Credit: 
This template is modified version of https://github.com/terraform-providers/terraform-provider-aws/blob/master/.github/ISSUE_TEMPLATE/Bug_Report.md

Created: May 20, 2019 
Last updated: -
--->
