# OpenCDSS / Workflow #

This page discusses the overall OpenCDSS workflow used to fix software bugs and make enhancements.

* [Introduction](#introduction)
* [1. Enter Issue on GitHub Issues Page](#1-enter-issue-on-github-issues-page)
* [2. Perform In-State Triage](#2-perform-in-state-triage)
* [3. Engage Triage Expertise as Needed](#3-engage-triage-expertise-as-needed)
* [4. Assign Developer to Issue and Start Feature Branch](#4-assign-developer-to-issue-and-start-feature-branch)
* [5. Software Development, Testing, and Documentation](#5-software-development-testing-and-documentation)
* [6. Merge Feature Branch into Master](#6-merge-feature-branch-into-master)
* [7. Periodically, Release Software](#7-periodically-release-software)

------------

## Introduction ##

OpenCDSS is being funded by the State of Colorado and focuses on software tools used by the State and its contractors.
Although there is interest by the State in encouraging other entities to participate in OpenCDSS software projects,
the State is particularly interested in ensuring that the software tools can be supported and enhanced to meet
the requirements of the State.
A practical consideration is that if someone requests an enhancement to a CDSS software tool,
State funding and project resources will not automatically be directed to that request.
Instead, State funding will focus on State priorities and other bug fixes and enhancements will generally need to be
funded from other sources such as projects, grants, or volunteer efforts.
In any case, software developers that commit to OpenCDSS projects will need to demonstrate knowledge of the products
and will need to work with developers that have commit privileges.

The following sections describe the general workflow that will be utilized to meet State of Colorado goals.
**This workflow is proposed and is being phased in. The workflow will be evaluated and adjusted based on actual use.
Ideally the workflow is fairly organic and does not become a bottleneck to making decisions and getting work done.**

## 1. Enter Issue on GitHub Issues Page ##

Bugs, suggestions, and feature requests should be entered using the GitHub issues page.
This requires that the GitHub repository URLs are prominently featured in documentation and "Help" and "About"
dialogs for software.

Issues should be entered for the appropriate repository.
For example, applications typically have a main code repository and may also have
related repositories such as for libraries, documentation, and tests.
If the issue is specific to a repository, the issue can be entered for that repository.
However, it may be easiest in most cases to enter the issue on the application's main repository and
the developer team can redirect the issues to other repositories if necessary.

The following cases will constrain one's ability to add and edit an issue:

* **Someone without a GitHub account (or with an account but is not logged into the account)** cannot define an issue
using the GitHub issues page on the repository.
Attempting to do so will display a popup asking to sign up for an account.
The person can sign into their GitHub account (if they have one), sign up for a new free account,
or submit the issue using the [DNR_OpenCDSS email account](mailto:DNR_OpenCDSS@state.co.us)
email account (which will prompt State of Colorado staff to enter the issue).

* **Someone with a GitHub account (and who is logged into that account)** can define the issue title and description,
add comments (with attachments), and can close the issue.  The person's GitHub identifier is associated with the issue.
This person cannot add issue details as described in the next level.

* **Someone with a GitHub account and permissions to write to the repository** can specify additional issue
data including ***Labels***, which indicate whether the issue is a bug, question, enhancement, etc. and define the
priority of the issue.
Issue details will be filled out by the development team in the next steps.

## 2. Perform In-State Triage ##

When an issue is added to the GitHub repository, repository maintainers who are subscribed will
automatically be notified with an email.
The State CDSS leadership team member associated with the product will then perform initial triage
in order to prioritize issues within the State's interests, considering the State's existing priorities
for software product enhancements. The following are potential issue evaluation criteria and actions:

1. Review issue description
	+ Is the description clear?
	+ In order to reproduce a bug, has an example been provided using GitHub issue attachments?
	+ Assign an initial label to the issue using standard GitHub labels (`bug`, `duplicate`, `enhancement`,
	`help wanted`, `invalid`, `question`, `wontfix`)
2. Review issue relevance to State
	+ Is the issue already included in State plans?
	+ Will addressing the issue have positive or negative effects (risk) for the State and
	its use of the software?
3. Make a determination as to issue priority and whether to direct State resources to the issue
	+ Is the issue already in the State's plan for software enhancements on existing/ongoing projects?
	+ Is the issue in the State's plan for the future?
	+ Are funding and human resources available on a project?
	+ Assign an initial priority label to the issue using custom issue labels
	(`low`, `medium`, `high`, `critical`)
	+ If possible, assign an initial size to indicate size label to indicate level of effort
	(`XS`, `S`, `M`, `L`, `XL`), although it may be difficult at this stage to assign this label,
	in which case the label will be added later by a specific developer

Possible actions include:

* If necessary, the State triage person will contact the issue author and ask for clarification.
* If the issue cannot be addressed in a timely manner with State project funding and there is an
opportunity to apply non-state resources (such as reaching back to the organization that
reported the issue), then the issue could be made a high priority even without State funding.
* As necessary, engage additional expertise to complete triage (see next section).
* If it is clear that the issue can be assigned to available resources (such as State IT staff or contractors),
then assign the issue to those resources.

## 3. Engage Triage Expertise as Needed ##

"Triage expertise" refers to one or more subject matter experts that may be needed to fully triage an issue.
This expertise will typically be provided by software developers or expert users (often State technical staff and contractors)
that have in-depth and current experience with a software product.

The additional expertise will help to refine the initial triage done by the State team member,
or will fully triage the issue if the State has limited interest in the issue.

The outcome of the triage from the previous steps will be clear direction on:

* whether the issue is a bug, enhancement, etc. (assign issue labels)
* what the priority of the issue is (assign issue label) 
* who is assigned to the issue (issue one or more assignees)

Of particular interest is whether the issue will be addressed in the next software release, how the work will be funded,
and whether coordination is needed for software design, testing, etc.
Funding details do not need to be included in the GitHub issue because they tend to be internal to project management;
however, it may make sense to indicate that funding is provided by "the abc project" or "by some organization",
to help overall management activities connect the dots between issues, projects, and funding organizations.
**These details need to be evaluated through experience.**

## 4. Assign Developer to Issue and Start Feature Branch ##

The initial triage from the previous steps will have connected the issue with one or more persons on the development
team, using the GitHub issues ***assignees***.
However, actually working on the issue may occur immediately or after some period of time.
A wait period may be due to lack of funding or human resources, because other issues need to be addressed first,
or other reasons.

The transition from triage to actual work can be indicated by adding a comment to the issue on the GitHub issues page,
for example "I'm looking into this issue now", "waiting for ABC to provide more information", etc.
Issues that are clearly underway are generally expected to be completed in a timely fashion so that the
feature branch can be merged in quickly and beta tested.
Long-running branches may take more effort to merge later.

Once the work effort moves forward, the software developer will create a feature branch in their development environment,
with a name that includes the issue number, for example:

* `1-bug-missing-data`
* `2-feature-op-rule-58`

The intent is to connect the feature branch to the issue for documentation purposes and provide some context.
Branch names should generally be as short as possible while being clear.
Commit messages can provide more detail on the specific changes.

## 5. Software Development, Testing, and Documentation ##

Once the feature branch is created, the software developer will make software changes,
test the software (ideally by implementing automated tests), and update documentation.
Commits to the branch can occur as often as it makes sense and should follow Git best practices.

**Testing for multiple configurations such as different Windows and Linux operating systems, 32-bit, and 64-bit
can be resource-intensive. This is an area that will continue to require resources
to implement effective testing frameworks, with each program having specific testing approach that
makes sense for the program.**

## 6. Merge Feature Branch into Master ##

Once development is complete for the issue, the feature branch can be merged back into the `master` branch
and the commits pushed to the GitHub repository.

If the work is done by someone without write permissions, then the GitHub pull request feature can be used
to let the core development team know that an enhancement is ready to be merged.

If the changes are made using a legacy development approach without GitHub commits or pull requests,
the changed code can be emailed to a developer with write access and the developer will integrate the changes.
This approach requires that funding resources are made available to all parties involved with the work.

A software product may involve multiple repositories such as main code, libraries, documentation, and tests.
Therefore, the process will need to be repeated for each repository that is involved.

## 7. Periodically Release Software ##

Periodically, the software will be released using the software product's build process:

1. Update the software version in code to an appropriate value and date (if not already updated).
Ongoing development may use a `dev` or other modifier at the end of the version to indicate
that the software is under development.
2. Update the software release notes (if not already updated).
3. Create the software installer.
4. Perform additional testing by installing the software and running automated tests.
In this case testing will occur in the operational environment.
4. Tag involved repositories with the software version to facilitate accessing files for a specific version later
(for example use `git tag -a StateMod_15.00.14`).
See also the `build-util/git-tag-all-*.sh` script that will tag all related repositories.
5. Publish the installer to the OpenCDSS website using the `build-util/copy-to-co-dnr-gcp.sh` script.
Ideally users will be able to download different versions of the software installer and view release notes
that correspond to the versions.

**Continuous or nightly builds are not currently envisioned for CDSS software but could be implemented at some point.**
