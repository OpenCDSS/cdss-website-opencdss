# OpenCDSS / StateCU GUI #

The StateCU GUI (graphical user interface) software is used to view and edit StateCU datasets
for the [StateCU](http://opencdss.state.co.us/opencdss/statecu/statecu/) software..
The GUI can also be used to create simple datasets using HydroBase web services.

Use the following links to download StateCU GUI software.

* **[CDSS StateCU Software Downloads (official releases)](https://cdss.colorado.gov/software/statecu) - releases that support State of CO projects**
* **OpenCDSS StateCU GUI Software Downloads - archive and development releases** (currently not available)

--------------

Additional StateCU GUI information and resources are available below:

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

The following sections provide background and information that is useful to StateCU GUI users.
StateCU GUI users fall into a spectrum of basic users that want to perform a simple historical consumptive
use analysis for a small area to advanced users that are modeling entire river basins.
Advanced users may run the StateCU model from the command line.
CDSS model datasets include documentation about how StateCU is used - see the
[CDSS website](https://cdss.colorado.gov/) for model datasets and documentation.

### Background ###

The StateCU GUI software provides data editing and viewing tools for StateCU datasets.
The software does not currently exist in a GitHub repository.

### User Documentation ###

* The [User Documentation](http://opencdss.state.co.us/opencdss/statecu/statecu/) provided with software on the CDSS website is the latest documentation.

### License ###

The software is being implemented consistent with OpenCDSS and code will be available in a GitHub repository.

### Report an Issue ###

To report an issue or request an enhancement,
use the [StateCU GitHub repository issues](https://github.com/OpenCDSS/cdss-app-statecu-fortran/issues).
A similar issues page will be implemented for the StateCU GUI when a GitHub repository is created.
Software developers will evaluate the issue.

## Developer Information ##

The StateCU is written in Visual Basic and uses the Visual Studio integrated development environment (IDE).
See the following developer resources.

### Software Developers ###

StateCU GUI software development is being led by Colorado DWR staff.
The OpenCDSS project provides the opportunity to identify additional developers that can
participate in StateCU GUI development and support.
The State of Colorado has designated the following as product contacts for development.

|**Person**             |**GitHub User**|**Role/Comment**|
|-----------------------|---------------|--------------------------------------------------------------------------------|
|Kelley Thompson (DWR)  |kelleythompson |State of Colorado DWR StateCU GUI champion                                      |
|Ashenafi Madebo (DWR)  |amadeboh       |State of Colorado DWR StateCU GUI champion                                      |
|Brian Macpherson (CWCB)|macphersonbr   |State of Colorado CDSS lead                                                     |
|Steve Malers (OWF)     |smalers        |OpenCDSS lead                                                                   | 

### Developer Documentation ###

* To be completed.

### Development Environment ###

* To be completed.

### Version Control ###

* To be completed.  The StateCU GUI does not currently exist as a GitHub repository.

### Adding an Issue ###

The GitHub issues tool is how developers track issues and communicate on progress.
For an overview of using GitHub issues, see ["Mastering Issues"](https://guides.github.com/features/issues/).
The following general procedure should be to used add an issue (bug, enhancement request, question, etc.).

1. Add a ***New issue*** on the [StateCU code repository issues page](https://github.com/OpenCDSS/cdss-app-statecu-fortran/issues).
	1. The issue title should short and clear, for example "Button x is inactive"
	(which will be indicated as a `bug` below) or
	"Need command to ABC" (which will be indicated as an `enhancement` below).
	2. An issue template (via `.github` folder in repository) is provided with instructions on how to submit the issue.
	The template provides default fill-in-the-blank sections that are useful for developers.
	The template text should be edited as appropriate to explain the issue, and is then submitted.
	Attachments can be used to provide test data or other useful information.  Use a zip file if necessary.
	3. The issue labels should be specified as completely possible.
	Labels can be adjusted later as necessary.
	See the [OpenCDSS Version Control / GitHub Repository Issues](version-control.md#github-repository-issues) guidelines.
	**If the issue author does not have write permissions on the repository, they will not be able to select issue labels.**
		1. Select the issue type as `bug`, `enhancement`, or `question`.
		2. Select the issue priority as `low`, `medium`, `high`, or `critical`.
		3. Select the issue size as `XS`, `S`, `M`, `L`, or `XS`.
		Note that these are relative sizes and not intended to be detailed hourly estimates.
2. There is not currently a GitHub project board defined for StateCU, but it could be added to manage issues.

### Testing ###

* To be completed.
