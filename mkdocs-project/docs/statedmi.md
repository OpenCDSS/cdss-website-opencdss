# OpenCDSS / StateDMI #

StateDMI software is used to automate processing of data to create input files for
[StateCU](http://opencdss.state.co.us/opencdss/statecu/statecu/) and
[StateMod](http://opencdss.state.co.us/opencdss/statemod/statemod/).

Use the following links to download StateDMI software.

* **[CDSS StateDMI Software Downloads (official releases)](http://www.colorado.gov/pacific/cdss/statedmi/) - releases that support State of CO projects**
* **[OpenCDSS StateDMI Software Downloads](http://opencdss.state.co.us/statedmi/) - archive and development releases**

--------------

Additional StateDMI information and resources are available below:

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

The following sections provide background and information that is useful to StateDMI users.
StateDMI users are typically advanced users that are creating model datasets.
CDSS model datasets include documentation about how StateDMI is used - see the
[CDSS website](https://www.colorado.gov/pacific/cdss) for model datasets and documentation.

### Background ###

StateDMI Data Management Interface (DMI) software automates processing data
and is used in CDSS to prepare input files for StateCU and StateMod models.
StateDMI can also be used independent of CDSS models and provides features to read data from
various databases, web services, and file formats.

### User Documentation ###

* Latest [User Documentation](http://opencdss.state.co.us/statedmi/latest/doc-user/).

### License ###

The software is licensed using [GPL v3+ license](https://github.com/OpenCDSS/cdss-app-statedmi-main/blob/master/LICENSE.md).

### Report an Issue ###

To report an issue or request an enhancement,
use the [StateDMI GitHub repository issues](https://github.com/OpenCDSS/cdss-app-statedmi-main/issues).
Software developers will evaluate the issue.

## Developer Information ##

StateDMI is written in Java and uses the Eclipse integrated development environment (IDE).
StateDMI is comprised of multiple software libraries, some of which are maintained as code in repositories,
and some of which are used as third-party binary libraries.
See the following developer resources.

### Software Developers ###

The State of Colorado has designated the following as product contacts for development.

|**Person**             |**GitHub User**|**Role/Comment**|
|-----------------------|---------------|--------------------------------------------------------------------------------|
|Steve Malers (OWF)     |smalers        |OpenCDSS lead and StateDMI developer                                            | 
|Ashenafi Madebo (DWR)  |amadeboh       |State of Colorado DWR StateDMI champion                                         |
|Brian Macpherson (CWCB)|macphersonbr   |State of Colorado CDSS lead                                                     |

### Developer Documentation ###

* Latest [Developer Documentation](http://opencdss.state.co.us/statedmi/latest/doc-dev/).

### Development Environment ###

Compilation is via Eclipse IDE, although it should be possible to use other tools.
See the [Developer Documentation](http://opencdss.state.co.us/statedmi/latest/doc-dev/)
for information about the development environment.
Important information includes:

* The current standard is to develop on Windows 10 using Eclipse.
* Git Bash command line tools are also used for Git and development process automation.

### Version Control ###

StateDMI code and other electronic assets are housed in the following repositories:

|**Content**                     |**Repository**|**Comment**|
|--------------------------------|--------------|-----------|
|Main StateDMI code              |[cdss-app-statedmi-main](https://github.com/OpenCDSS/cdss-app-statedmi-main)||
|Library components              ||See the [main respository README](https://github.com/OpenCDSS/cdss-app-statedmi-main) for list.|
|Automated tests                 |[cdss-app-statedmi-test](https://github.com/OpenCDSS/cdss-app-statedmi-test)|Referenced by User Documentation for examples.|
|Developer documentation (MkDocs)|[cdss-app-statedmi-doc-dev](https://github.com/OpenCDSS/cdss-app-statedmi-doc-dev)||
|User documentation (MkDocs)     |[cdss-app-statedmi-doc-user](https://github.com/OpenCDSS/cdss-app-statedmi-doc-user)||

StateDMI software should be updated using a "feature branch" approach as per the [OpenCDSS Workflow](http://opencdss.state.co.us/opencdss/workflow/workflow/)
and StateDMI developer documentation.

### Adding an Issue ###

The GitHub issues tool is how developers track issues and communicate on progress.
For an overview of using GitHub issues, see ["Mastering Issues"](https://guides.github.com/features/issues/).
The following general procedure should be to used add an issue (bug, enhancement request, question, etc.).

1. Add a ***New issue*** on the [StateDMI code repository issues page](https://github.com/OpenCDSS/cdss-app-statedmi-main/issues).
	1. The issue title should short and clear, for example "Command ABC editor parameter choices not complete"
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
2. There is not currently a GitHub project board defined for StateDMI, but it could be added to manage issues.

### Testing ###

StateDMI automated testing has traditionally focused on functional testing, but some library components
use unit tests.  See the following resources:

* [TSTool Quality Control documentation](http://opencdss.state.co.us/tstool/latest/doc-user/quality-control/quality-control/) - StateDMI conventions are similar
* [TSTool Developer Documentation on Testing](http://opencdss.state.co.us/tstool/latest/doc-dev/dev-tasks/testing/testing/) - StateDMI conventions are similar
* [cdss-app-statedmi-test](https://github.com/OpenCDSS/cdss-app-statedmi-test) - repository for automated tests
