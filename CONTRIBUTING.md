# Contributing Guidelines

Wow, you are here to lend us your hand? Awesome!

First of all, we want to thank you so much for considering to contribute to this module. Without support from you this module will not become as useful as it is.

Following this guidelines will help to accelerate you delivering your contributions. In return, it also helping us addressing your issue, assessing changes, and helping you finalize your pull requests.


## ***"It is my first time contributing, I am not sure how to do it."***

No need to worry, expert was once a beginner. You can learn how from http://makeapullrequest.com/ and http://www.firsttimersonly.com/


## ***"What can I do to contribute?"***

This module is originally created to help you provision infrastructures in a secure, efficient, and reliable way. To maintain that goal, your contributions are absolutely needed. 

There are many ways to contribute, from fixing typos or grammar error, improving the documentation, submitting bug reports and feature requests, also writing code which can be incorporated into the module. Should you have any questions, feel free to ask by creating an issue!


## ***"I found a bug, what should I do?"***

If you find a security vulnerability, do NOT open an issue. Please e-mail maintainer instead.

If you have noticed a bug or have a question, [search the issue tracker](https://github.com/traveloka/terraform-aws-iam-role/issues?q=label%3Abug) first to see if someone else has already created a ticket. If it is not, then feel free to create one!

To create the issue ticket you can use **Bug Report** template. By using the template it is mandatory for you to fill all asked questions where relevant.

Oh, you know how to fix the bug you found? Wonderful! 
It is going to be awesome if you not only create an issue but also submit a pull request!


## ***"How to submit a feature request? I am sure this feature is also going to be useful for the community."***

Just like submitting the bug, first you need to [search the issue tracker](https://github.com/traveloka/terraform-aws-iam-role/issues?q=label%3Aenhancement) to see if someone else has already created a request. If such request not exists yet, go ahead and create one!

To create the issue ticket you can use **Feature Request** template. By using the template it is mandatory for you to fill all asked questions where relevant.


## ***"I want to create and submit a pull request, any conditions should I pay attention to?"***

Before start contributing, it is required for you to:
- Ensure an issue related to the changes you want to submit is exists. If not, create an issue and start discussion there prior working on contribution. This will reduce chance of unncecessary double efforts.
- Always sign your commits. To learn how to do so, please follow https://help.github.com/en/articles/signing-commits. If any of you commits is not signed then your PR will not be able to be merged.
- Use Terraform and AWS provider which versions are the one listed on [README.md](README.md)
- Execute `terraform fmt` to rewrite Terraform configuration files to a canonical format and style.

All good? Then you are ready! Here are the steps you can follow to submit a PR:
1. Create your own fork of the repository.
2. Create a branch with a descriptive name. A good branch name would be (where issue #123 is the ticket you're working on): `123-fix-docs-typo`.
3. Do the changes there, don't forget to execute `terraform fmt`.
4. Commit and push the changes to your origin.
5. Create PR from your origin branch to the upstream master.
6. Wait for maintainer to review your code. Go or No Go decision is one of the maintainer's resposibilities, we will make sure to explain any decision we are making :)


## ***Happy Contributing!***