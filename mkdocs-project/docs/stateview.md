# OpenCDSS / StateView #

StateView software is used to view data in a local copy of the State of Colorado's HydroBase database.
StateView provides faster access to data in a local database.
However, many users use the [online CDSS Tools](https://dnrweb.state.co.us/cdss/).
Use the following links to download StateView software.

* **[CDSS StateView Software Downloads (official releases)](http://www.colorado.gov/pacific/cdss/stateview/) - releases that support State of CO projects**
* **OpenCDSS StateView Software Downloads - archive and development releases** (currently not available)

--------------

Additional StateView information and resources are available below:

* [General/User Information](#generaluser-information)
	+ [Background](#background)
	+ [User Documentation](#user-documentation)
	+ [License](#license)
	+ [Report an Issue](#report-an-issue)
* [Developer Information](#developer-information)
	+ [Software Developers](#software-developers)
	+ [Developer Documentation](#developer-documentation)
	+ [Development Environment](#development-environment)
	+ [Version Control](#version-control)
	+ [Adding an Issue](#adding-an-issue)
	+ [Testing](#testing)

------------------

## General/User Information  ##

The following sections provide background and information that is useful to StateView users.
StateView users are typically CDSS modelers that have also installed HydroBase locally.

### Background ###

StateView software provides data-viewing tools for the HydroBase database, when HydroBase is attached locally on the computer.
See instructions for [local HydroBase attachment](http://opencdss.state.co.us/hydrobase/index.html).
The software was developed to facilitate researching data for modeling, as a companion to TSTool and StateDMI, which are used to automate data processing.

The [online CDSS Tools](https://dnrweb.state.co.us/cdss/) now provide features to view HydroBase data
and StateView is currently not actively maintained or developed.

### User Documentation ###

* See the documentation distributed with the software on the [CDSS website](https://www.colorado.gov/pacific/cdss/stateview).

### License ###

The software is licensed using [GPL v3+ license](https://github.com/OpenCDSS/cdss-app-stateview-java/blob/master/LICENSE.md).

### Report an Issue ###

To report an issue or request an enhancement,
use the [StateView GitHub repository issues](https://github.com/OpenCDSS/cdss-app-stateview-java/issues).
Software developers will evaluate the issue.

## Developer Information ##

StateView is written in Java and uses the Eclipse integrated development environment (IDE).
StateView is comprised of multiple software libraries, some of which are maintained as code in repositories,
and some of which are used as third-party binary libraries.
See the following developer resources.

### Software Developers ###

The State of Colorado has designated the following as product contacts for development.

|**Person**             |**GitHub User**|**Role/Comment**|
|-----------------------|---------------|--------------------------------------------------------------------------------|
|Steve Malers (OWF)     |smalers        |OpenCDSS lead and StateView developer                                           |
|Brian Macpherson (CWCB)|macphersonbr   |State of Colorado CWCB lead                                                     |

### Developer Documentation ###

* See the [StateView repository README](https://github.com/OpenCDSS/cdss-app-stateview-java).

### Development Environment ###

Compilation is via Eclipse IDE, although it should be possible to use other tools.
See the [README file for the repository](https://github.com/OpenCDSS/cdss-app-stateview-java)
for information about the development environment.
Important information includes:

* The current standard is to develop on Windows 10 using Eclipse.
* Git Bash command line tools are also used for Git and development process automation.

### Version Control ###

StateView code and other electronic assets are housed in the following repositories.

|**Content**                     |**Repository**|**Comment**|
|--------------------------------|--------------|-----------|
|Main StateView code             |[cdss-app-stateview-java](https://github.com/OpenCDSS/cdss-app-stateview-java)|README provides additional information.|
|Library components              ||See the [main repository README](https://github.com/OpenCDSS/cdss-app-stateview-java) for list.|
|Automated tests                 |None. | Automated tests have not been implemented for the application. |
|Developer documentation         |[cdss-app-stateview-java](https://github.com/OpenCDSS/cdss-app-stateview-java)|See README.|
|User documentation              |[cdss-app-stateview-java](https://github.com/OpenCDSS/cdss-app-stateview-java)|See `doc` folder.|

StateView software should be updated using a "feature branch" approach as per the [OpenCDSS Workflow](workflow/workflow.md)
and StateView developer documentation.

### Adding an Issue ###

The GitHub issues tool is how developers track issues and communicate on progress.
For an overview of using GitHub issues, see ["Mastering Issues"](https://guides.github.com/features/issues/).
The following general procedure should be to used add an issue (bug, enhancement request, question, etc.).

1. Add a ***New issue*** on the [StateView code repository issues page](https://github.com/OpenCDSS/cdss-app-stateview-java/issues).
	1. The issue title should short and clear, for example "Button X is inactive"
	(which will be indicated as a `bug` below) or
	"Need command to ABC" (which will be indicated as an `enhancement` below).
	2. An issue template (via `.github` folder in repository) is provided with instructions on how to submit the issue.
	The template provides default fill-in-the-blank sections that are useful for developers.
	The template text should be edited as appropriate to explain the issue, and is then submitted.
	Attachments can be used to provide test data or other useful information.  Use a zip file if necessary.
	3. The issue labels should be specified as completely possible.
	Labels can be adjusted later as necessary.
	See the [OpenCDSS Version Control / GitHub Repository Issues](version-control/version-control.md#github-repository-issues) guidelines.
	**If the issue author does not have write permissions on the repository, they will not be able to select issue labels.**
		1. Select the issue type as `bug`, `enhancement`, or `question`.
		2. Select the issue priority as `low`, `medium`, `high`, or `critical`.
		3. Select the issue size as `XS`, `S`, `M`, `L`, or `XS`.
		Note that these are relative sizes and not intended to be detailed hourly estimates.
2. There is not currently a GitHub project board defined for StateView, but it could be added to manage issues.

### Testing ###

StateView automated testing for the user interface has not been implemented.
Underlying code is tested using TSTool and StateDMI tests.
