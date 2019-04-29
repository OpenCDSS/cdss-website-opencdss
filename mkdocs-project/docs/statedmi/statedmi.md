# OpenCDSS / StateDMI #

StateDMI software is used to automate processing of data to create StateCU and StateMod datasets.

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

StateDMI Data Management Interface (DMI) software automates processing data
and is used in CDSS to prepare input files for StateCU and StateMod models.
StateDMI can also be used independent of CDSS models and provides features to read data from
various databases, web services, and file formats.

## Product Leadership ##

StateDMI software development has been lead for many years by Steve Malers (Open Water Foundation) via CWCB and other projects.
The OpenCDSS project is providing the opportunity to identify additional developers that can
participate in StateDMI development and support.

## Software Developers ##

The State of Colorado has designated the following as product contacts for development.

|**Person**             |**GitHub User**|**Role/Comment**|
|-----------------------|---------------|--------------------------------------------------------------------------------|
|Steve Malers (OWF)     |smalers        |OpenCDSS lead and StateDMI developer.                                           | 
|Ashenafi Madebo (DWR) ?|?              |State of Colorado DWR StateDMI champion.                                        |
|Erik Skeie (CWCB)      |?              |State of Colorado CWCB StateDMI champion.                                       |
|Brian Macpherson (CWCB)|macphersonbr   |State of Colorado CDSS lead.                                                    |

## Software User Expertise ##

The following are experienced StateDMI users that are typically involved in defining software functionality and testing.

|**Person**              |**GitHub User**|**Role/Comment**|
|------------------------|---------------|--------------------------------------------------------------------------------|
|Brian Macpherson (CWCB) |macphersonbr   |Experience with West Slope, and South Platte models.                            |
|Kara Sobieski (WWG)     |karasobieski   |Extensive experience - also others at WWG.                                      |
|Steve Malers (OWF)      |smalers        |Extensive experience with many data processing workflows.                       |

## OpenCDSS Web Page ##

The OpenCDSS web page provides access to StateDMI software, documentation, and tests.
This website also provides access to the development version of the software.

* [StateDMI on OpenCDSS](http://opencdss.state.co.us/statedmi/)

## CDSS Web Page ##

The CDSS web page provides access to StateDMI software, in particular versions used in State of Colorado projects:

* [StateDMI on CDSS](https://www.colorado.gov/pacific/cdss/statedmi)

## License ##

The software is licensed using [GPL v3+ license](https://github.com/OpenCDSS/cdss-app-statedmi-main/blob/master/LICENSE.md).

## User Information ##

StateDMI users are typically StateCU and StateMod modelers, although StateDMI can be used to automate basic data processing.
Helpful information includes:

* Model datasets have documentation about how StateDMI is used - see the
[CDSS website](https://www.colorado.gov/pacific/cdss/modeling-data) for model datasets and documentation.
* [StateDMI User Documentation](http://opencdss.state.co.us/statedmi/latest/doc-user/)

## Developer Information ##

StateDMI is written in Java and uses the Eclipse integrated development environment (IDE).
StateDMI is comprised of multiple software libraries, some of which are maintained as code in repositories,
and some of which are used as third-party binary libraries.

### Documentation ###

[Developer Documentation](http://opencdss.state.co.us/statedmi/latest/doc-dev/)
should be followed by all developers.

### Development Environment ###

Compilation is via Eclipse IDE, although it should be possible to use other tools.
See the [Developer Documentation](http://opencdss.state.co.us/statedmi/latest/doc-dev/)
for information about the development environment.
Important information includes:

* The current standard is to develop on Windows 10 using Eclipse.
* Git bash command line tools can also be used.

### Version Control ###

StateDMI code and other electronic assets are housed in the following repositories.
Private repositories are hosted under the Open Water Foundation GitHub account until open source license is released,
at which time the repositories will be transferred to the OpenCDSS account:

|**Content**                     |**Repository**|**Comment**|
|--------------------------------|--------------|-----------|
|Main StateDMI code              |[cdss-app-statedmi-main](https://github.com/OpenCDSS/cdss-app-statedmi-main)||
|Library components              ||See the [main respository README](https://github.com/OpenCDSS/cdss-app-statedmi-main) for list.|
|Automated tests                 |[cdss-app-statedmi-test](https://github.com/OpenCDSS/cdss-app-statedmi-test)|Referenced by User Documentation for examples.|
|Developer documentation (MkDocs)|[cdss-app-statedmi-doc-dev](https://github.com/OpenCDSS/cdss-app-statedmi-doc-dev)||
|User documentation (MkDocs)     |[cdss-app-statedmi-doc-user](https://github.com/OpenCDSS/cdss-app-statedmi-doc-user)||

StateDMI software should be updated using a "feature branch" approach as per the [OpenCDSS Workflow](../workflow/workflow)
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
	See the [OpenCDSS Version Control / GitHub Repository Issues](../version-control/version-control.md#github-repository-issues) guidelines.
	**If the issue author does not have write permissions on the repository, they will not be able to select issue labels.**
		1. Select the issue type as `bug`, `enhancement`, or `question`.
		2. Select the issue priority as `low`, `medium`, `high`, or `critical`.
		3. Select the issue size as `XS`, `S`, `M`, `L`, or `XS`.
		Note that these are relative sizes and not intended to be detailed hourly estimates.
2. There is not currently a GitHub project board defined for StateDMI, but it could be added to manage issues.

### Testing ###

StateDMI automated testing has traditionally focused on functional testing, but some library components
use unit tests.  See the following resources:

* [StateDMI Quality Control documentation](http://opencdss.state.co.us/statedmi/latest/doc-user/quality-control/quality-control/) - **need to implement similar to TSTool**
* [StateDMI Developer Documentation on Testing](http://opencdss.state.co.us/statedmi/latest/doc-dev/dev-tasks/testing/testing/)
* [cdss-app-statedmi-test](https://github.com/OpenCDSS/cdss-app-statedmi-test) - repository for automated tests
