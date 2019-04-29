# OpenCDSS / StateCU GUI #

The StateCU GUI software is used to view and edit StateCU datasets.
The GUI can also be used to create simple datasets using HydroBase web services.

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

The StateCU GUI software provides data editing and viewing tools for StateCU datasets.
The software does not currently exist in a GitHub repository.

## Product Leadership ##

StateCU GUI software development is currently led by Kelley Thompson of Colorado Division of Water Resources.

## Software Developers ##

The State of Colorado has designated the following as product contacts for development.

|**Person**             |**GitHub User**|**Role/Comment**|
|-----------------------|---------------|--------------------------------------------------------------------------------|
|Steve Malers (OWF)     |smalers        |OpenCDSS lead.                                                                  | 
|Kelley Thompson (DWR)  |kelleythompson |State of Colorado DWR StateCU GUI champion.                                     |
|         ? (CWCB)      |?              |State of Colorado CWCB StateCU GUI champion.                                    |
|Brian Macpherson (CWCB)|macphersonbr   |State of Colorado CDSS lead.                                                    |

## Software User Expertise ##

The following are experienced StateCU GUI users that are typically involved in defining software functionality and testing.

|**Personr**             |**GitHub User**|**Role/Comment**|
|------------------------|---------------|--------------------------------------------------------------------------------|
|Brian Macpherson (CWCB) |macphersonbr   |Experience with West Slope, and South Platte models.                            |
|Kelley Thompson (DWR)   |kelleythompson |Extensive experience.                                                           |

## OpenCDSS Web Page ##

The OpenCDSS web page provides access to StateCU GUI software and documentation.
This website also provides access to the development version of the software.

* [StateCU GUI on OpenCDSS](http://opencdss.state.co.us/statecugui/) - **software products are currently not available**

## CDSS Web Page ##

The CDSS web page provides access to StateCU GUI software.

* [StateCU GUI on CDSS](https://www.colorado.gov/pacific/cdss/statecu)

## License ##

The software is licensed using [GPL v3+ license](https://github.com/OpenCDSS/cdss-app-StateCUgui-java/blob/master/LICENSE.md).

## User Information ##

StateCU GUI users are typically CDSS modelers.
Helpful information includes:

* See the [latest StateCU GUI User Documentation](http://opencdss.state.co.us/statecugui/latest/doc-user) - **currently not online, only installed with software**

## Developer Information ##

StateCU GUI is written in Visual Basic.
See the following developer resources.

### Documentation ###

* Latest [Developer Documentation](https://github.com/OpenCDSS/cdss-app-statecugui-java) - **Not currently online**

### Development Environment ###

An older Visual Basic development environment is used.

### Version Control ###

StateCU GUI code and other electronic assets are housed in the following repositories.

**The software is not currently maintained in a GitHub repository - can fill in the table once a repository is created.**

StateCU GUI software should be updated using a "feature branch" approach as per the [OpenCDSS Workflow](../workflow/workflow.md)
and StateCU GUI developer documentation.

### Adding an Issue ###

**The following is a placeholder for when the repository is created.**

The GitHub issues tool is how developers track issues and communicate on progress.
For an overview of using GitHub issues, see ["Mastering Issues"](https://guides.github.com/features/issues/).
The following general procedure should be to used add an issue (bug, enhancement request, question, etc.).

1. Add a ***New issue*** on the [StateCU GUI code repository issues page](https://github.com/OpenCDSS/cdss-app-statecugui-java/issues).
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
2. There is not currently a GitHub project board defined for StateCU GUI, but it could be added to manage issues.

### Testing ###

**Need to fill in this section when the repository is created.**
