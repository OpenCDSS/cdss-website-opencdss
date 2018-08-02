# OpenCDSS / Version Control #

This documentation discusses version control protocols for OpenCDSS software projects.

* [Introduction](#introduction)
* [OpenCDSS GitHub Account](#opencdss-github-account)
* [Git Training](#git-training)
* [Git Workflow](#git-workflow)

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
in particular to deal with branching and merging on teams.

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
