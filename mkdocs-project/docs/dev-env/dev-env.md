# OpenCDSS / Development Environment #

This page summarizes OpenCDSS development environment topics.

* [Introduction](#introduction)
* [Development Environment Challenges](#development-environment-challenges)
* [Development Environment Documentation](#development-environment-documentation)

-------------------

## Introduction ##

The development environment for each CDSS software tool typically includes the following:

* version control - Git/GitHub is standard for OpenCDSS
* dependency management - for third party components
* documentation - Markdown/MkDocs is being used for some OpenCDSS components and traditional Word/PDF is retained
where Markdown/MkDocs has not been implemented
* editing - text editor or Integrated Development Environment (IDE) tool
* testing - varies with additional automated testing being implemented
* building (compiling, creating installer) - depends on language and IDE
* distribution - packaging executable software in installers, zip files, etc.

The development environment primarily depends on the programming language.
A simple text editor can be used at a minimum;
however, an advanced text editor or IDE can provide features such as integration with Git,
code completion, code editing across the project, error checking, debugging, etc.
For example, for Java programs (TSTool, StateDMI, StateView, StateMod GUI), the [Eclipse](https://www.eclipse.org/) IDE
has been used.
For Fortran programs (StateCU and StateMod), a text editor has typically been used and IDE options include
[Eclipse Photran](https://www.eclipse.org/photran/),
[CodeBlocks](http://www.codeblocks.org/), and others.

StateCU and StateMod development has traditionally used text editors.
Eclipse Photran was configured in the StateMod development environment but has not been
used extensively to date within OpenCDSS due to legacy developer preferences.

## Development Environment Challenges ##

A challenge in the development environment is whether or not to save IDE files to the Git repository.
For example, each IDE typically wants to create a "project" file listing
files that belong to the project.
These project files are specific to the IDE and different developers may want to use different tools,
each with different IDE-specific project files.

One approach is to allow such files to be saved in the repository to facilitate efficiency of setting up new
development environments.
A new developer can clone the code repository and begin using the IDE without setting up a project.
This works as long as the files are not dynamic,
in which case each developer's actions could result in saving files to the repository and flip-flopping
file content between developers.
Saving IDE project files in the repository may make sense for developers that are not skilled with the development environment.

Another approach is to omit IDE-specific files from the repository and require each developer
to set up the project themselves. This is a common approach but requires that the software developer
have enough skills to do the project setup (which may be an issue).
Documentation needs to be provided to explain this approach.

The OpenCDSS projects currently tend towards the first approach (save IDE project files in repository)
because a specific IDE is selected for development (Eclipse for Java, Eclipse Photran for Fortran).
However, this approach is specific to each software product and may change over time as the
development team evolves.

Another common issue is how to format code, such as whether tabs have been used to format code.
The typical standard is to avoid using tabs and instead use spaces, to ensure that there is no
ambiguity in formatting. However, updating old code and enforcing this standard takes some care.
Such issues will be addressed over time as code is reviewed and updated.
It is typical to use the default for the IDE (such as Eclipse) or follow the programming language
standard (such as 4-spaces for Python).

## Development Environment Documentation ##

Each OpenCDSS software project includes developer documentation.
At a minimum, the main `README.md` file in the repository will explain the project organization and how to get started.
More complex software projects have correspondingly detailed developer documentation.
New developers should consult the developer documentation first.
If developer documentation is lacking, the OpenCDSS team can work to improve the documentation.

