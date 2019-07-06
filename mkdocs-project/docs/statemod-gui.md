# OpenCDSS / StateMod GUI #

The StateMod GUI (graphical user interface) software is used to view StateMod datasets
(see also the [StateMod software](http://localhost:8000/statemod/statemod/)).
The StateMod GUI has not been actively developed in recent years and is not
currently used in the standard CDSS modeling environment.
Use the following links to download StateMod GUI software.

* **[CDSS StateMod Software Downloads (official releases)](http://www.colorado.gov/pacific/cdss/statemod/) - releases that support State of CO projects**
* **OpenCDSS StateMod GUI Software Downloads - not currently enabled**

--------------

Additional StateMod GUI information and resources are available below:

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

The following sections provide background and information that is useful to StateMod GUI users.
StateMod GUI users have typically been interested in viewing data and results without using the command line.
Advanced StateMod users typically run the model on the command line and implement automated workflows
to process model input and results.
CDSS model datasets include documentation about how StateMod is used - see the
[CDSS website](https://www.colorado.gov/pacific/cdss) for model datasets and documentation.

### Background ###

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
Attempting to download and compile the software will likely encounter issues
due to updates in libraries that are used.

### User Documentation ###

* See the documentation distributed with the software on the [CDSS website](https://www.colorado.gov/pacific/cdss/statemod).

### License ###

The software is licensed using [GPL v3+ license](https://github.com/OpenCDSS/cdss-app-statemodgui-java/blob/master/LICENSE.md).

### Report an Issue ###

To report an issue or request an enhancement,
use the [StateMod GUI GitHub repository issues](https://github.com/OpenCDSS/cdss-app-statemodgui-java/issues).
Software developers will evaluate the issue.

## Developer Information ##

The StateMod GUI is written in Java and uses the Eclipse integrated development environment (IDE).
The StateMod GUI is comprised of multiple software libraries, some of which are maintained as code in repositories,
and some of which are used as third-party binary libraries.
See the following developer resources.

### Software Developers ###

The State of Colorado has designated the following as product contacts for development.

|**Person**             |**GitHub User**|**Role/Comment**|
|-----------------------|---------------|--------------------------------------------------------------------------------|
|Steve Malers (OWF)     |smalers        |OpenCDSS lead and StateMod GUI developer.                                       | 
|Brian Macpherson (CWCB)|macphersonbr   |State of Colorado CDSS lead.                                                    |

### Developer Documentation ###

* See the [StateMod GUI repository README](https://github.com/OpenCDSS/cdss-app-statemodgui-java).

### Development Environment ###

Compilation is via Eclipse IDE, although it should be possible to use other tools.
See the [README file for the repository](https://github.com/OpenCDSS/cdss-app-statemodgui-java)
for information about the development environment.
Important information includes:

* The current standard is to develop on Windows 10 using Eclipse.
* Git Bash command line tools are also used for Git and development process automation.

### Version Control ###

StateMod GUI code and other electronic assets are housed in the following repositories.

|**Content**                     |**Repository**|**Comment**|
|--------------------------------|--------------|-----------|
|Main StateMod GUI code          |[cdss-app-statemodgui-java](https://github.com/OpenCDSS/cdss-app-statemodgui-java)|README provides additional information.|
|Library components              ||See the [main repository README](https://github.com/OpenCDSS/cdss-app-statemodgui-java) for list.|
|Automated tests                 |None. | Automated tests have not been implemented for the application. |
|Developer documentation         |[cdss-app-statemodgui-java](https://github.com/OpenCDSS/cdss-app-statemodgui-java)|See README.|
|User documentation              |[cdss-app-statemodgui-java](https://github.com/OpenCDSS/cdss-app-statemodgui-java)|See `doc` folder.|

StateMod GUI software should be updated using a "feature branch" approach as per the [OpenCDSS Workflow](workflow/workflow.md).

### Adding an Issue ###

The GitHub issues tool is how developers track issues and communicate on progress.
For an overview of using GitHub issues, see ["Mastering Issues"](https://guides.github.com/features/issues/).
The following general procedure should be to used add an issue (bug, enhancement request, question, etc.).

1. Add a ***New issue*** on the [StateMod GUI code repository issues page](https://github.com/OpenCDSS/cdss-app-statemodgui-java/issues).
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
2. There is not currently a GitHub project board defined for StateMod GUI, but it could be added to manage issues.

### Testing ###

StateMod GUI automated testing for the user interface has not been implemented.
Underlying code is tested using TSTool and StateDMI tests.
