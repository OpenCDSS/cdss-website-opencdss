# OpenCDSS / Documentation #

This page discusses the general approach for software documentation.

* [Introduction](#introduction)
* [MkDocs Static Websites](#mkdocs-static-websites)
* [Repository Naming Conventions](#repository-naming-conventions)

-----

## Introduction ##

OpenCDSS documentation is using a different approach than past documentation efforts.
Traditionally, Microsoft Word has been used to create documentation, which is then saved as PDF files for distribution.
This approach has several limitations, including difficulty in comparing versions, a binary file format, complicated
formatting, and lack of search functionality. 

## MkDocs Static Websites ##

Based on significant review and experimentation, the OpenCDSS effort has adopted the MkDocs software as the tool for creating
oftware documentation (and other documentation), for the following reasons:

1. The source files for documentation are Markdown, which is a simple text format that has been widely
adopted for software and other documentation.
2. Because Markdown files are text, they can be easily managed in a version control system.
Therefore, it is possible to track changes and review edits that have been made.
3. Because Markdown formatting is simple, authors can focus on content and other tasks like software
development and testing, rather than struggling with formatting complexities in Word.
4. Markdown files can be edited with a text editor and there are many free options for editors.
5. Software such as MkDocs encourages breaking up content into separate linked files, with the
result being navigable documentation available as a static website.
6. MkDocs themes provide document formatting and layout options.
The "Material" theme has been chosen for OpenCDSS documentation, which provides a clean, modern, appearance;
search capability; site navigation; and page navigation.
7. MkDocs also supports customizing the documentation with custom CSS properties - this can be used
to brand the documentation for OpenCDSS/CDSS.
8. MkDocs static websites can be easily viewed within the development environment
using the `mkdocs serve` command.
9. Static websites for documentation can be easily pushed to cloud storage sites such as 
the State of Colorado's Google Cloud Platform (GCP) using a storage bucket.
10. GitHub renders Markdown files and therefore formatted documentation files can be viewed on the GitHub
website with a web browser without downloading the source files.
In this case some features such as links will not work, but simple content edits can be made using GitHub website.

The Open Water Foundation has created the following documentation to help with MkDocs implementation:

* [OWF / Learn MkDocs](http://learn.openwaterfoundation.org/owf-learn-mkdocs/)

## Repository Naming Conventions ##

Documentation conventions have been implemented based on experience.
For example, the following conventions are used when documentation is managed as a folder within
a software source code repository:

* `doc-user-mkdocs-project` - folder in a repository indicates user documentation as a MkDocs project
* `doc-dev-mkdocs-project` - folder in a repository indicates developer documentation as a MkDocs project

It may make sense to use a separate repository for documentation,
for example when the software development environment is complicated or using a separate repository will encourage
more review and contributions. In this case, the repository name and top-level folder convention is similar to:

* `someproduct-doc-dev/mkdocs-project` - indicates developer documentation as a MkDocs project
* `someproduct-doc-user/mkdocs-project` - indicates user documentation as a MkDocs project

In other cases, the documentation is stand-alone and does not correspond to software code.
In this case a naming convention and top-level folder similar to the following may be used:

* `some-documentation/mkdocs-project` - for example for this documentation:  [cdss-website-opencdss](https://github.com/OpenCDSS/cdss-website-opencdss)

Each MkDocs project folder will then follow MkDocs conventions, such as `docs` folder for source content.

Refer to CDSS software repositories for examples of MkDocs documentation that have been implemented,
in particular for [TSTool](https://github.com/OpenCDSS/cdss-app-tstool-doc-user/).
