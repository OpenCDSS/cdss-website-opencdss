# OpenCDSS / Version Control #

Version control is essential to any software project.
Most professionals implement version control in some form, such as naming documents with the date
and saving backups of files.
No modern software project should be implemented without version control.

CDSS software products haves used various approaches to implement version control.
For example, TSTool used Subversion for version control for many years and was converted
to use Git/GitHub in recent years, continuing with OpenCDSS.

In contrast, StateMod development used dated folders for each copy/version of the software.

A major task within OpenCDSS has been to migrate CDSS software to the
[Git version control system](https://git-scm.com/),
with cloud hosting on [GitHub](https://github.com/).
The open source Git system is the dominant version control system (even though it has its issues).
The organization of files within each repository must be consistent with the development tools
used for the software.
General conventions are also used, such as implementing `README.md` files to explain repository contents.

The [Open Water Foundation GitHub account](https://github.com/OpenWaterFoundation)
is currently being used to host OpenCDSS Git repositories.
Many of the repositories are private, pending selection of open source software licenses.
Repositories are public when licensing is not an issue, for example documentation and test repositories.

DWR uses version control internally for its development projects;
however, this system is not visible publicly and is not appropriate for open source projects.
If the CWCB or DWR register for organizational GitHub accounts,
the repositories can be transferred from the Open Water Foundation account.
This is not currently a major issue.

Significant resources are available for Git training.
However, based on experience, OWF found that Git training materials specific to OpenCDSS were needed in
order to provide context and focus for the skills of water resources professionals.
The following documentation applies across OpenCDSS software and will be enhanced over time as
experienced is gained from OpenCDSS software teams.
Git is an acquired skill and requires ongoing use and continued learning based on first-hand experience,
in particular to deal with branching and merging on teams.

* [CDSS / Learn Git](http://learn.openwaterfoundation.org/cdss-learn-git/)
