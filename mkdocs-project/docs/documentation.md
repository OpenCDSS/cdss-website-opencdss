# OpenCDSS / Documentation #

OpenCDSS documentation is using a different approach than past documentation efforts.
Traditionally, Microsoft Word has been used to create documentation, which is then saved as PDF files for distribution.
This has the following limitations:

1. Microsoft Word files for CDSS software tend to be large files and because the files are essentially binary,
they are difficult to use with version control systems:
	1. Large binary files take a lot of space in repositories.
	Even a minor edit results in the entire file needing to be saved in Git.
	2. It is difficult to "diff" versions, requiring conversion to text and using software that is not
	configures by default.
	3. Because it is difficult to automate conversion of Word files to PDF during software installer creation,
	it is often necessary to also save PDF files in repositories.
	This goes counter to the typical approach of only saving source files in repositories.
	4. It is difficult to automate aggregating separate Word files into complete documents.
	5. Although Word/PDF files provide navigation and search features, such features can be difficult
	to configure effectively through bookmarks, etc.
2. Microsoft Word (Microsoft Office) software has a cost, which may be a limitation for some software developers that
want to contribute to a software project.
Although open source tools are available, they often do not handle all Word files.
Using alternatives such as Google Docs distracts from editing documentation within the development environment.
3. Microsoft Word editing software is not readily-available on all platforms, thereby limiting ability to edit.
4. Word files do not convert into website content to the degree required for software project websites.

Based on significant review and experimentation performed by the Open Water Foundation,
the OpenCDSS effort has adopted the MkDocs software as the tool for creating software and other documentation,
for the following reasons:

1. The source files for documentation are Markdown, which is a simple text format that has been widely
adopted for technology products and documentation.
2. Because Markdown files are text, they can be easily managed in a version control system.
3. Because Markdown formatting is simple, authors can focus on content and other tasks like software
development and testing, rather than fighting with formatting complexities in Word.
4. Software such as MkDocs encourages breaking up content into separate linked files, with the
result being navigable documentation available as a static website.
5. MkDocs themes provide document formatting and layout options.
The "Material" theme has been chosen for OpenCDSS documentation, which provides a clean, modern, appearance;
search capability; site navigation; and page navigation.
6. MkDocs also supports customizing the documentation with custom CSS properties - this can be used
to brand the documentation for OpenCDSS/CDSS.
7. MkDocs static websites can be easily viewed within the development environment.
8. Static websites for documentation can be easily pushed to cloud storage sites such as Amazon S3 and
Google Cloud Storage.

The Open Water Foundation has created the following documentation to help with MkDocs implementation:

* [OWF / Learn MkDocs](http://learn.openwaterfoundation.org/owf-learn-mkdocs/)

OWF has implemented documentation conventions based on experience, for example:

* `doc-user-mkdocs-project` folder in a repository indicates user documentation as a MkDocs project
* `doc-dev-mkdocs-project` folder in a repository indicates developer documentation as a MkDocs project
* Separate documentation projects have been created for important topics, for example
[CDSS / Learn Git](http://learn.openwaterfoundation.org/cdss-learn-git/)

Refer to CDSS software repositories for examples of MkDocs documentation.
