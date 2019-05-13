# OpenCDSS / TSTool #

TSTool software is used to automate processing of time series and other data
and is used to create input files for
[StateCU](http://opencdss.state.co.us/opencdss/statecu/statecu/) and
[StateMod](http://opencdss.state.co.us/opencdss/statemod/statemod/).
Use the following links to download TSTool software.

* **[CDSS TSTool Software Downloads](http://www.colorado.gov/pacific/cdss/tstool/) - releases that support State of CO projects**
* **[OpenCDSS TSTool Software Downloads](http://opencdss.state.co.us/tstool/) - archive and development releases**

--------------

Additional TSTool information and resources are available below:

* [General/User Information](#generaluser-information)
	+ [Background](#background)
	+ [User Documentation](#user-documentation)
	+ [License](#license)
	+ [Software User Expertise](#software-user-expertise)
* [Developer Information](#developer-information)
	+ [Software Developers](#software-developers)
	+ [Developer Documentation](#developer-documentation)
	+ [Development Environment](#development-environment)
	+ [Version Control](#version-control)
	+ [Adding an Issue](#adding-an-issue)
	+ [Testing](#testing)

------------------

## General/User Information  ##

The following sections provide background and information that is useful to TSTool users.
TSTool users fall into a spectrum of basic users that browse and view data to advanced users that automate complex processes.
CDSS model datasets include documentation about how TSTool is used - see the
[CDSS website](https://www.colorado.gov/pacific/cdss) for model datasets and documentation.

### Background ###

TSTool Data Management Interface (DMI) software automates processing time series and other data.
TSTool is used in CDSS to prepare input files for StateCU and StateMod models
and process output into output product files.
TSTool can also be used independent of CDSS models and provides features to read data from
various databases, web services, and file formats, and automate processes.

### User Documentation ###

* Latest [User Documentation](http://opencdss.state.co.us/tstool/latest/doc-user/).

### License ###

The software is licensed using [GPL v3+ license](https://github.com/OpenCDSS/cdss-app-tstool-main/blob/master/LICENSE.md).

### Software User Expertise ###

The following are experienced TSTool users that are typically involved in defining software functionality and testing.

|**Person**              |**GitHub User**|**Role/Comment**|
|------------------------|---------------|--------------------------------------------------------------------------------|
|Brian Macpherson (CWCB) |macphersonbr   |                                                                                |
|Kara Sobieski (WWG)     |karasobieski   |Extensive experience - also others at WWG                                       |
|Steve Malers (OWF)      |smalers        |Extensive experience with many data processing workflows                        |

## Developer Information ##

TSTool is written in Java and uses the Eclipse integrated development environment (IDE).
TSTool is comprised of multiple software libraries, some of which are maintained as code in repositories,
and some of which are used as third-party binary libraries.
See the following developer resources.

### Software Developers ###

TSTool software development has been led for many years by Steve Malers (Open Water Foundation) via CWCB and other projects.
The OpenCDSS project provides the opportunity to identify additional developers that can
participate in TSTool development and support.
The State of Colorado has designated the following as product contacts for development.

|**Person**             |**GitHub User**|**Role/Comment**|
|-----------------------|---------------|--------------------------------------------------------------------------------|
|Steve Malers (OWF)     |smalers        |OpenCDSS lead and TSTool developer                                              | 
|Ashenafi Madebo (DWR)  |amadeboh       |State of Colorado DWR TSTool champion                                           |
|Brian Macpherson (CWCB)|macphersonbr   |State of Colorado CWCB lead                                                     |

### Developer Documentation ###

* Latest [Developer Documentation](http://opencdss.state.co.us/tstool/latest/doc-dev/).

### Development Environment ###

Compilation is via Eclipse IDE, although it should be possible to use other tools.
See the [Developer Documentation](http://opencdss.state.co.us/tstool/latest/doc-dev/)
for information about the development environment.
Important information includes:

* The current standard is to develop on Windows 10 using Eclipse.
* Git Bash command line tools are also used for Git and development process automation.
* A new plugin capability is being developed to allow third-party components to be developed
without changing the core TSTool software.

### Version Control ###

TSTool code and other electronic assets are housed in the following repositories.

|**Content**                     |**Repository**|**Comment**|
|--------------------------------|--------------|-----------|
|Main TSTool code                |[cdss-app-tstool-main](https://github.com/OpenCDSS/cdss-app-tstool-main)|README provides additional information.|
|Library components              ||See the [main repository README](https://github.com/OpenCDSS/cdss-app-tstool-main) for list.|
|Automated tests                 |[cdss-app-tstool-test](https://github.com/OpenCDSS/cdss-app-tstool-test)|Referenced by User Documentation for examples.|
|Developer documentation (MkDocs)|[cdss-app-tstool-doc-dev](https://github.com/OpenCDSS/cdss-app-tstool-doc-dev)||
|User documentation (MkDocs)     |[cdss-app-tstool-doc-user](https://github.com/OpenCDSS/cdss-app-tstool-doc-user)||

TSTool software should be updated using a "feature branch" approach as per the [OpenCDSS Workflow](../workflow/workflow.md)
and TSTool developer documentation.

### Adding an Issue ###

The GitHub issues tool is how developers track issues and communicate on progress.
For an overview of using GitHub issues, see ["Mastering Issues"](https://guides.github.com/features/issues/).
The following general procedure should be to used add an issue (bug, enhancement request, question, etc.).

1. Add a ***New issue*** on the [TSTool code repository issues page](https://github.com/OpenCDSS/cdss-app-tstool-main/issues).
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
2. There is not currently a GitHub project board defined for TSTool, but it could be added to manage issues.

### Testing ###

TSTool automated testing has traditionally focused on functional testing, but some library components
use unit tests.  See the following resources:

* [TSTool Quality Control documentation](http://opencdss.state.co.us/tstool/latest/doc-user/quality-control/quality-control/)
* [TSTool Developer Documentation on Testing](http://opencdss.state.co.us/tstool/latest/doc-dev/dev-tasks/testing/testing/)
* [cdss-app-tstool-test](https://github.com/OpenCDSS/cdss-app-tstool-test) - repository for automated tests
