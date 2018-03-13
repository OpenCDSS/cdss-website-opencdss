# OpenCDSS / Development Environment #

The development environment for each CDSS software tool considers the following.

* version control - Git is standard for OpenCDSS
* dependency management - for third party components
* documentation - MkDocs is standard for OpenCDSS when Word/PDF is not used
* editing - text editor or Integrated Development Environment (IDE) tool
* testing - varies but tools such as TSTool are used to automate tests, compare time series, etc.
* building (compiling, creating installer) - depends on language and IDE
* distribution

The development environment primarily depends on the programming language.
A simple text editor can be used at a minimum;
however, an advanced text editor or IDE can provide features such as integration with Git,
code completion, error checking, debugging, etc.
For example, for Java (TSTool, StateDMI, StateView, StateMod GUI), popular IDEs are
[Eclipse](https://www.eclipse.org/),
[NetBeans](https://netbeans.org/),
and [IntelliJ](https://www.jetbrains.com/idea/), and others.
For Fortran, options include
[Eclipse Photran](https://www.eclipse.org/photran/) and
[CodeBlocks](http://www.codeblocks.org/), and others.

For OpenCDSS, Eclipse is used for Java programs because it has been used for many years.

StateCU and StateMod development has traditionally used text editors.
Eclipse Photran was configured in the StateMod development environment but has not been
used extensively to date within OpenCDSS due to legacy developer preferences.

## Development Environment Challenges ##

A challenge in the development environment is whether or not to save IDE files to the Git repository.
For example, each IDE typically wants to create a "project" file listing
files that belong to the project.
These project files are specific to the IDE and different developers may want to use different tools,
each with different IDE-specific project files.

One approach is to allow such files to be saved in the repository to facilitate efficiency between developers.
A new developer can clone the code repository and begin using the IDE without setting up a project.
This works as long as the files are not dynamic,
in which case each developer's actions could result in saving files to the repository and flip-flopping
file content between developers.
Saving IDE project files in the repository may make sense for developers that are not skilled with the development environment.

Another approach is to omit IDE-specific files from the repository and require each developer
to set up the project themselves.  This is a common approach but requires that the software developer
have enough skills do do the project setup (which may be an issue).
Documentation needs to be provided to explain this approach.

The OpenCDSS projects currently tend towards the first approach (save IDE project files in repository)
because a specific IDE is selected for development (Eclipse for Java, Eclipse Photran for Fortran).
However, this approach is specific to each software product and may change over time as the
development team evolves.

Another common issue is handling of code formatting, such as whether tabs have been used to format code.
The typical standard is to avoid using tabs and instead use spaces, to ensure that there is no
ambiguity in formatting.  However, updating old code and enforcing this standard takes some care.
Such issues will be addressed over time as code is reviewed and updated.
