# OpenCDSS / StateView #

StateView software is used to view data in a local copy of the State of Colorado's HydroBase database.
StateView provides faster access to data in a local database.
However, many users use the [online CDSS Tools](https://dnrweb.state.co.us/cdss/).

* [Background](#background)
* [Product Leadership](#product-leadership)
	+ [Software Developers](#software-developers)
	+ [Software User Expertise](#software-user-expertise)
* [License](#license)
* [OpenCDSS Web Page](#opencdss-web-page) - current and archived downloads
* [CDSS Web Page](#cdss-web-page) - versions used in CDSS
* [User Information](#user-information)
* [Developer Information](#developer-information)
	+ [Documentation](#documentation)
	+ [Development Environment](#development-environment)
	+ [Version Control](#version-control)
	+ [Adding an Issue](#adding-an-issue)
	+ [Testing](#testing)

------------------

## Background ##

StateView software provides data-viewing tools for the HydroBase database, when HydroBase is installed on the computer.
The software was developed to facilitate researching data for modeling,
as a companion to TSTool and StateDMI, which are used to automate data processing.

The [online CDSS Tools](https://dnrweb.state.co.us/cdss/) now provide features to view HydroBase data
and StateView is currently not actively maintained or developed.

## Product Leadership ##

StateView software development has been lead for many years by Steve Malers (Open Water Foundation) via CWCB and other projects.

## Software Developers ##

The State of Colorado has designated the following as product contacts for development.

|**Person**             |**GitHub User**|**Role/Comment**|
|-----------------------|---------------|--------------------------------------------------------------------------------|
|Steve Malers (OWF)     |smalers        |OpenCDSS lead and StateView developer.                                          | 
|              ? (DWR)  |?              |State of Colorado DWR StateView champion.                                       |
|         ? (CWCB)      |?              |State of Colorado CWCB StateView champion.                                      |
|Brian Macpherson (CWCB)|macphersonbr   |State of Colorado CDSS lead.                                                    |

## Software User Expertise ##

The following are experienced StateView users that are typically involved in defining software functionality and testing.

|**Personr**             |**GitHub User**|**Role/Comment**|
|------------------------|---------------|--------------------------------------------------------------------------------|
|Brian Macpherson (CWCB) |macphersonbr   |Experience with West Slope, and South Platte models.                            |
|Steve Malers (OWF)      |smalers        |Extensive experience with many data processing workflows.                       |

## OpenCDSS Web Page ##

The OpenCDSS web page provides access to StateView software and documentation.
This website also provides access to the development version of the software.

* [StateView on OpenCDSS](http://opencdss.state.co.us/StateView/)

## CDSS Web Page ##

The CDSS web page provides access to StateView software and model datasets,
in particular versions that are used in State of Colorado projects.

* [StateView on CDSS](https://www.colorado.gov/pacific/cdss/StateView)

## License ##

The software is licensed using [GPL v3+ license](https://github.com/OpenCDSS/cdss-app-stateview-java/blob/master/LICENSE.md).

## User Information ##

StateView users are typically CDSS modelers that have also installed HydroBase locally.
Helpful information includes:

* See the [latest StateView User Documentation](http://opencdss.state.co.us/stateview/latest/doc-user) - **currently not online, only installed with software**

## Developer Information ##

StateView is written in Java and uses the Eclipse integrated development environment (IDE).
StateView is comprised of multiple software libraries, some of which are maintained as code in repositories,
and some of which are used as third-party binary libraries.
See the following developer resources:

### Documentation ###

* Latest [Developer Documentation](https://github.com/OpenCDSS/cdss-app-stateview-java) - README is the developer documentation

### Development Environment ###

Compilation is via Eclipse IDE, although it should be possible to use other tools.
Important information includes:

* The current standard is to develop on Windows 10 using Eclipse.
* Git Bash command line tools can also be used.

### Version Control ###

StateView code and other electronic assets are housed in the following repositories.

|**Content**                     |**Repository**|**Comment**|
|--------------------------------|--------------|-----------|
|Main StateView code             |[cdss-app-stateview-java](https://github.com/OpenCDSS/cdss-app-stateview-java)|README provides additional information.|
|Library components              ||See the [main repository README](https://github.com/OpenCDSS/cdss-app-stateview-java) for list.|
|Automated tests                 |None. | Automated tests have not been implemented for the application. |
|Developer documentation         |[cdss-app-stateview-java](https://github.com/OpenCDSS/cdss-app-stateview-java)|See README.|
|User documentation              |[cdss-app-stateview-java](https://github.com/OpenCDSS/cdss-app-stateview-java)|See `doc` folder.|

StateView software should be updated using a "feature branch" approach as per the [OpenCDSS Workflow](../workflow/workflow.md)
and StateView developer documentation.

### Adding an Issue ###

The GitHub issues tool is how developers track issues and communicate on progress.
For an overview of using GitHub issues, see ["Mastering Issues"](https://guides.github.com/features/issues/).
The following general procedure should be to used add an issue (bug, enhancement request, question, etc.).

1. Add a ***New issue*** on the [StateView code repository issues page](https://github.com/OpenCDSS/cdss-app-stateview-java/issues).
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
2. There is not currently a GitHub project board defined for StateView, but it could be added to manage issues.

### Testing ###

Because StateView is primarily a visual tool, testing has traditionally involved interactively testing each feature.
Libraries are tested in other repositories and products.

If StateView is phased out in favor of online tools, limited investment in additional testing may occur.
