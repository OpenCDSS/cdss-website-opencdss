# OpenCDSS / StateMod GUI #

The StateMod GUI software is used to view StateMod datasets.
The tool has not been actively developed in recent years and is not
currently used in the standard CDSS modeling environment.

* [Background](#background)
* [Product Leadership](#product-leadership)
	+ [Software Developers](#software-developers)
	+ [Software User Expertise](#software-user-expertise)
* [License](#license)
* [OpenCDSS Web Page](#opencdss-web-page)
* [CDSS Web Page](#cdss-web-page)
* [User Information](#user-information)
* [Developer Information](#developer-information)
	+ [Documentation](#documentation)
	+ [Development Environment](#development-environment)
	+ [Version Control](#version-control)
	+ [Adding an Issue](#adding-an-issue)
	+ [Testing](#testing)

------------------

## Background ##

The StateMod GUI software provides data-viewing tools for StateMod datasets.
The software was envisioned as a tool to view and edit StateMod datasets,
run StateMod, and view results from the model.
The software includes viewing windows for most StateMod data files, model network,
and map interface (if spatial data are provided).

However, CDSS modelers in most cases prefer to use a data-centered approach
that involves running TSTool and StateDMI software to prepare model input files,
and using software such as TSTool to view output.

The StateMod GUI has not been updated for several years and is not currently used,
although it could be enhanced.

## Product Leadership ##

StateMod GUI software development has been lead for many years by Steve Malers (Open Water Foundation) via CWCB and other projects.

## Software Developers ##

The State of Colorado has designated the following as product contacts for development.

|**Person**             |**GitHub User**|**Role/Comment**|
|-----------------------|---------------|--------------------------------------------------------------------------------|
|Steve Malers (OWF)     |smalers        |OpenCDSS lead and StateMod GUI developer.                                       | 
|Brian Macpherson (CWCB)|macphersonbr   |State of Colorado CDSS lead.                                                    |

## Software User Expertise ##

The following are experienced StateMod GUI users that are typically involved in defining software functionality and testing.

|**Person**             |**GitHub User**|**Role/Comment**|
|------------------------|---------------|--------------------------------------------------------------------------------|
|Steve Malers (OWF)      |smalers        |Extensive experience with many data processing workflows.                       |

## OpenCDSS Web Page ##

The OpenCDSS web page provides access to StateMod GUI software and documentation.
This website also provides access to the development version of the software.

* [StateMod GUI on OpenCDSS](http://opencdss.state.co.us/statemodgui/) - **software products are currently not available**

## CDSS Web Page ##

The CDSS web page provides access to StateMod GUI software.

* [StateMod GUI on CDSS](https://www.colorado.gov/pacific/cdss/statemod)

## License ##

The software is licensed using [GPL v3+ license](https://github.com/OpenCDSS/cdss-app-statemodgui-java/blob/master/LICENSE.md).

## User Information ##

StateMod GUI users are typically CDSS modelers.
Helpful information includes:

* See the [latest StateMod GUI User Documentation](http://opencdss.state.co.us/statemodgui/latest/doc-user) - **currently not online, only installed with software**

## Developer Information ##

StateMod GUI is written in Java and uses the Eclipse integrated development environment (IDE).
StateMod GUI is comprised of multiple software libraries, some of which are maintained as code in repositories,
and some of which are used as third-party binary libraries.
See the following developer resources:

### Documentation ###

* Latest [Developer Documentation](https://github.com/OpenCDSS/cdss-app-statemodgui-java) - README is the developer documentation

### Development Environment ###

Compilation is via Eclipse IDE, although it should be possible to use other tools.
Important information includes:

* The current standard is to develop on Windows 10 using Eclipse.
* Git Bash command line tools can also be used.

### Version Control ###

StateMod GUI code and other electronic assets are housed in the following repositories.

|**Content**                     |**Repository**|**Comment**|
|--------------------------------|--------------|-----------|
|Main StateMod GUI code          |[cdss-app-statemodgui-java](https://github.com/OpenCDSS/cdss-app-statemodgui-java)|README provides additional information.|
|Library components              ||See the [main repository README](https://github.com/OpenCDSS/cdss-app-statemodgui-java) for list.|
|Automated tests                 |None. | Automated tests have not been implemented for the application. |
|Developer documentation         |[cdss-app-statemodgui-java](https://github.com/OpenCDSS/cdss-app-statemodgui-java)|See README.|
|User documentation              |[cdss-app-statemodgui-java](https://github.com/OpenCDSS/cdss-app-statemodgui-java)|See `doc` folder.|

StateMod GUI software should be updated using a "feature branch" approach as per the [OpenCDSS Workflow](../workflow/workflow.md)
and StateMod GUI developer documentation.

### Adding an Issue ###

The GitHub issues tool is how developers track issues and communicate on progress.
For an overview of using GitHub issues, see ["Mastering Issues"](https://guides.github.com/features/issues/).
The following general procedure should be to used add an issue (bug, enhancement request, question, etc.).

1. Add a ***New issue*** on the [StateMod GUI code repository issues page](https://github.com/OpenCDSS/cdss-app-statemodgui-java/issues).
	1. The issue title should short and clear, for example "Command ABC editor parameter choices not complete"
	(which will be indicated as a `bug` below) or
	"Need command to ABC" (which will be indicated as an `enhancement` below).
	2. An issue template (via `.github` folder in repository) is provided with instructions on how to submit the issue.
	The template provides default fill-in-the-blank sections that are useful for developers.
	The template text should be edited as appropriate to explain the issue, and is then submitted.
	Attachments can be used to provide test data or other useful information.  Use a zip file if necessary.
	3. The issue labels should be specified as completely possible.
	Labels can be adjusted later as necessary.
	See the [OpenCDSS Version Control / GitHub Repository Issues](../version-control/version-control.md#github-repository-issues) guidelines.
	**If the issue author does not have write permissions on the repository, they will not be able to select issue labels.**
		1. Select the issue type as `bug`, `enhancement`, or `question`.
		2. Select the issue priority as `low`, `medium`, `high`, or `critical`.
		3. Select the issue size as `XS`, `S`, `M`, `L`, or `XS`.
		Note that these are relative sizes and not intended to be detailed hourly estimates.
2. There is not currently a GitHub project board defined for StateMod GUI, but it could be added to manage issues.

### Testing ###

Because StateMod GUI is primarily a visual tool, testing has traditionally involved interactively testing each feature.
Libraries are tested in other repositories and products.

If StateMod GUI is phased out in favor of other tools, limited investment in additional testing may occur.
