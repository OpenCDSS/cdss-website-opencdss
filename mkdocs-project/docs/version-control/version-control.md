# OpenCDSS / Version Control #

This documentation discusses version control protocols for OpenCDSS software projects.

* [Introduction](#introduction)
* [OpenCDSS GitHub Account](#opencdss-github-account)
* [Git Training](#git-training)
* [Git Workflow](#git-workflow)
* [Git Repository Naming Conventions](#git-repository-naming-conventions)
* [GitHub Projects](#github-projects)
* [GitHub Repository Issues](#github-repository-issues)

---------------

## Introduction ##

Version control is essential to any software project.
Most professionals that work with electronic content implement version control in some form,
such as naming documents with the date and saving backups of files.
No modern software project should be implemented without version control.

CDSS software products have historically used various approaches to implement version control.
For example, TSTool used [Subversion](https://subversion.apache.org/) for version control for many years and was converted
to use Git/GitHub in recent years, and use of Git/GitHub was refined in the OpenCDSS project.

In contrast, StateMod development used dated folders for each copy/version of the software
and code had to be loaded into Git/GitHub as part of the OpenCDSS project.

A major task within OpenCDSS has been to migrate CDSS software to the
[Git version control system](https://git-scm.com/),
with cloud hosting on [GitHub](https://github.com/).
The open source Git system is a widely-used version control system, especially for open source projects.
The organization of files within each repository must be consistent with the development tools
used for the software.
General conventions are also used, such as implementing `README.md` files to explain repository contents.

## OpenCDSS GitHub Account ##

Some State of Colorado entities such as DWR/OIT use Git or other version control systems
for software developed for the State, such as HydroBase tools.
However, these systems may be internal or otherwise inaccessible to OpenCDSS and the public.
To address this issue, the [OpenCDSS GitHub account](https://github.com/OpenCDSS)
has been created to house OpenCDSS Git repositories.

The OpenCDSS account currently only houses public repositories.
CDSS software products that do not yet have open source licenses assigned are managed
in private repositories using the [Open Water Foundation GitHub account](https://github.com/OpenWaterFoundation).
Access to private repositories is granted to individuals that have a need to see the repository content.
Repositories will be transferred from the Open Water Foundation to OpenCDSS Git repositories
as they are made public.

## Git Training ##

Significant resources are available on the internet for Git training.
However, based on experience, Git training materials specific to OpenCDSS were needed in
order to provide context for the skills of water resources professionals
who are new to version control tools and Git.
The following Git training documentation applies across OpenCDSS software and will be enhanced over time as
experienced is gained from OpenCDSS software teams.
Git is an acquired skill and requires ongoing use and continued learning based on first-hand experience,
in particular to deal with branching and merging with teams.

* [CDSS / Learn Git](http://learn.openwaterfoundation.org/cdss-learn-git/)

## Git Workflow ##

OpenCDSS is using a [feature branching model](http://learn.openwaterfoundation.org/cdss-learn-git/08a-lesson-workflow-concepts/lesson-workflow-concepts/#feature-branching-model)
Git workflow for software projects.
In this simple approach, the `master` branch in each repository is the most up to date.
Bug fixes and new features are worked on in a feature branch,
where the name of the branch should be something like `1-bug-topic`,
where the number agrees with the issue number entered in the GitHub repository issues page.

The new feature or bug fix should be tested by the developer,
after which it can be merged with the `master` branch.
External inputs such as code submission through issues or GitHub pull requests should
be evaluated, integrated, and tested before committing to the `master` branch.

A challenge for OpenCDSS is to integrate traditional "to do" lists containing software features
with repository issues list and workflow.
Implementation of the [OpenCDSS Workflow](workflow) is intended to address this challenge.

## Git Repository Naming Conventions ##

Git repositories that are included in OpenCDSS generally follow a naming convention
that is intended to minimize confusion within and external to OpenCDSS.
For example, repositories for StateMod are named:

```
cdss-app-statemod-fortran
cdss-app-statemod-fortran-doc-dev
cdss-app-statemod-fortran-doc-user
cdss-app-statemod-fortran-test
```
The follow guidelines should be considered when naming repositories:

* Repositories associated with a product should have the same start to the names to clearly
indicate a related group of repositories.
* The first part of the repository name is `cdss` to indicate that the application is part of CDSS.
* The second part of the repository name indicates the main product type:
	+ `app` - application
	+ `lib` - library, can be followed by a modifier, such as `lib-dmi-hydrobase` for
	HydroBase Data Management Interface (DMI) library
	+ `util` - one or more general utilities
* A product name follows, such as `statemod` for the StateMod modeling software.
* If necessary, a language or other modifier follows, such as `fortran` for StateMod:
	+ help to quickly identify the main development environment, skill set that is needed,
	and integration language
	+ in some cases, facilitate different languages to be implemented for the same product, such
	as different language to access HydroBase web services (`java`, `js`, `python`, etc.)
* Additional modifiers can be added to the main product, such as 
`doc-dev` for developer documentation, `doc-user` for user documentation, and `test` for automated tests.

Multiple repositories are typically used for a product, for several reasons:

1. Repositories can become unwieldy if they are too large,
especially if a large number of contributors require someone to merge content for many content types.
2. It is convenient to require that contributors to a component repository only need to be skilled
at the tools needed for that repository.
For example, if a contributor only contributes to StateMod documentation,
they don't need to concern themselves with understanding the software code development environment.
This is particularly relevant for large, complicated development environments.
3. Using different repositories allows permissions to be controlled at more granular level.
For example, a contributor with write access to documentation and test repositories
may not have write access to the code repository.

## GitHub Projects ##

GitHub projects can be created at the account level (OpenCDSS) or repository level,
and provide a way to manage project work items.
OpenCDSS is experimenting with GitHub projects as a way to allow OpenCDSS management
who are not software developers to
engage in higher-level project management, such as prioritizing funded work,
while allowing software developers to work at more granular level via GitHub issues
([see next section](#github-repository-issues)).
GitHub projects allow tracking issues in a "to do", "in progress", and "done" dashboard,
integrate with GitHub repository issues,
and also allow additional "cards" to be added to track project backlog.

A project can be defined for each product, either as a project outside any repository,
or a project associated with the main code repository.
The most appropriate approach for OpenCDSS projects will be evaluated over time given
experience working with projects and repositories.
Currently, the only project that is defined is for StateMod.
Refer to each product's information to learn whether a GitHub project is defined.

## GitHub Repository Issues ##

GitHub provides an ***Issues*** tracker at the repository level,
and this is one of the primary ways that contributors to the repository manage the work related to the repository.
Note that issues are not stored with the repository - they are a feature provided by GitHub in addition
to the standard Git repository.

GitHub provides default issue "labels" that can be associated with an issue, such as `bug`, `enhancement`, `duplicate`, etc.
Although the default issues are useful, they do not provide enough information to allow a developer,
development team, or product manager to understand priority and estimated level of effort to address an issue.
[GitHub projects](#github-repository-projects) provide features to indicate priority in that high priority issues
may be added to the current project dashboard.
However, it is useful to understand priority and size at the issue level in cases where a GitHub project is not used
and because GitHub projects don't indicate size.
Therefore, for OpenCDSS, the custom labels shown in the following table are typically added to each repository.
The colors generally follow the pattern of hot colors for "more important" or "big" issues, and cool colors for "less important" and "small" issues.
The description for the label, which is shown in the issue editor, helps understand the context of the label by using`Priority` or `Size`.
GitHub users that are able to edit issue details should select a label from each of the three groups in order to indicate
issue type, priority, and size:

|**Issue Group**|**Issue Label**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Description**|**Color**|**Color RGB**|
|---------------|---------------|-------------------------------------------------------------------------|---------|-------------|
|Type           |`bug`          |GitHub default for bug                                                   |         |             |
|Type           |`enhancement`  |GitHub default for enhancement                                           |         |             |
|               |               |                                                                         |         |             |
|Priority       |`low`          |`Priority: planned for future`                                           |green    |`#00ff00`    |
|Priority       |`medium`       |`Priority: normal maintenance and enhancements`                          |yellow   |`#ffff00`    |
|Priority       |`high`         |`Priority: next release if possible`                                     |orange   |`#ffa500`    |
|Priority       |`critical`     |`Priority: highest priority`                                             |red      |`#ff0000`    |
|               |               |                                                                         |         |             |
|Size           |`XS`           |`Size: 2 hours or less`                                                  |green    |`#00ff00`    | 
|Size           |`S`            |`Size: day or less`                                                      |cyan     |`#00ffff`    |
|Size           |`M`            |`Size: 2-3 days`                                                         |blue     |`#0000ff`    |
|Size           |`L`            |`Size: more than 3 days`                                                 |yellow   |`#ffff00`    |
|Size           |`XL`           |`Size: needs to be split`                                                |red      |`#ff0000`    |
|Size           |`XXL`          |May use this in the future to allow `XL` to be something like `4-14 days`.  If `XXL` is used the `XL` color can e orange and `XXL` can be red.|         |             |
