# OpenCDSS / StateCU #

StateCU is the State of Colorado's consumptive use model.

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

StateCU is the State of Colorado's consumptive use model,
which simulates consumptive use for agricultural demands.
The model can be run using monthly or daily timestep depending on consumptive use method.

Input to the model consists of consumptive use locations such as climate stations and ditch structures,
climate time series, and crop data.
Input is typically created using "Data Management Interface" (DMI) software
including [TSTool](../tstool/tstool.md) and [StateDMI](../statedmi/statedmi.md),
which automate processing of "command files" to create model input files.

Output from StateCU consists of large binary files with time series data,
large text file reports, and log and check files, depending on run options.
Binary files are often processed using TSTool.

The [StateCU GUI](../statecu-gui/statecu-gui.md) (Graphical User Interface)
simplifies creation of basic datasets, running datasets, and viewing results.
Modelers often use the TSTool and StateDMI software to
create input files because the approach is automated and
can be repeated, whereas the GUI can be used to edit simpler datasets.

StateCU datasets are not maintained in GitHub.

## Product Leadership ##

StateCU software development leadership is in transition.
Several developers have contributed to StateCU over the years.

The OpenCDSS effort has focused on putting StateCU code under version control and
implementing an updated development environment.
Steve Malers (Open Water Foundation) is leading this effort.

## Software Developers ##

The State of Colorado has designated the following as product contacts for development.

|**Person**             |**GitHub User**|**Role/Comment**|
|-----------------------|---------------|--------------------------------------------------------------------------------|
|Kelley Thompson (DWR)  |kelleythompson |State of Colorado lead developer for StateCU                                    |
|Brian Macpherson (CWCB)|macphersonbr   |State of Colorado CWCB lead                                                     |
|Erin Wilson (WWG)      |               |Legacy developer                                                                |
|Steve Malers (OWF)     |smalers        |OpenCDSS lead, facilitating implementation of open source project               | 

## Software User Expertise ##

The following are experienced StateCU users that are typically involved in defining software functionality and testing.

|**Person**              |**GitHub User**|**Role/Comment**|
|------------------------|---------------|--------------------------------------------------------------------------------|
|Ashenafi Madebo  (DWR)  |amadeboh       |Experience with Rio Grande                                                      |
|Kara Sobieski (WWG)     |karasobieski   |Extensive modeling experience - also others at WWG                              |

## OpenCDSS Web Page ##

The OpenCDSS web page provides access to StateCU software, documentation, and tests.
This website also provides access to the development version of the software.

* [StateCU on OpenCDSS](http://opencdss.state.co.us/statecu/) - **software products are currently not available**

## CDSS Web Page ##

The CDSS web page provides access to StateCU software and model datasets:

* [StateCU on CDSS](https://www.colorado.gov/pacific/cdss/statecu)
* [StateCU Datasets](https://www.colorado.gov/pacific/cdss/consumptive-use-statecu)

## License ##

The software is licensed using [GPL v3+ license](https://github.com/OpenCDSS/cdss-app-statecu-fortran/blob/master/LICENSE.md).

## User Information ##

StateCU users generally fall into two categories: "modelers" and "users of model results".
The former develops model input and runs StateCU on the model input dataset whereas the latter may
just review models results that someone else has run.
The CDSS approach tends to support modelers and there is an opportunity to improve access to model results.
This is challenging because model results files can be very large and finding a way to access and
view the results, such as on the web, presents technical challenges.

Information for StateCU users consists of:

* Model datasets have documentation - see the
[CDSS website](https://www.colorado.gov/pacific/cdss/modeling-dataset-documentation) for model datasets and documentation.
* The StateCU User's Manual is available on the [CDSS StateCU page](https://www.colorado.gov/pacific/cdss/statecu).
* There is a need for user-friendly documentation, for example navigable documentation such as this documentation.
[Prototype StateCU online documentation](http://opencdss.state.co.us/statecu/latest/doc-user/)
has been created and may be enhanced.

## Developer Information ##

StateCU is written in Fortran (Fortran 77 with some newer code).
The OpenCDSS project uses the open source gfortran compiler.

### Developer Documentation ###

[Developer Documentation](http://opencdss.state.co.us/statecu/latest/doc-dev/) has been created and
should be followed by all developers.

### Development Environment ###

Compilation is via a makefile, although the OpenCDSS project has evaluated using Eclipse Photran.
See the [Developer Documentation](http://opencdss.state.co.us/statecu/latest/doc-dev/)
for information about the development environment.
Important information includes:

* A new naming convention is being phased in for executable program names in order
to differentiate between 32/64 bit, and Windows/Linux.

### Version Control ###

StateCU code and other electronic assets are housed in the following repositories:
|**Content**                     |**Repository**|**Comment**|
|--------------------------------|--------------|-----------|
|Software code                   |[cdss-app-statecu-fortran](https://github.com/OpenCDSS/cdss-app-statecu-fortran)||
|Automated tests                 |[cdss-app-statecu-fortran-test](https://github.com/OpenCDSS/cdss-app-statecu-fortran-test)|Envisioned for automated testing.|
|Developer documentation (MkDocs)|[cdss-app-statecu-fortran-doc-dev](https://github.com/OpenCDSS/cdss-app-statecu-fortran-doc-dev)||
|User documentation (MkDocs)     |[cdss-app-statecu-fortran-doc-user](https://github.com/OpenCDSS/cdss-app-statecu-fortran-doc-user)||

StateCU software should be updated using a "feature branch" approach as per the [OpenCDSS Workflow](../workflow/workflow)
and StateCU developer documentation.

### Adding an Issue ###

The GitHub issues tool is how developers track issues and communicate on progress.
For an overview of using GitHub issues, see ["Mastering Issues"](https://guides.github.com/features/issues/).
The following general procedure should be to used add an issue (bug, enhancement request, question, etc.).

1. Add a ***New issue*** on the [StateCU code repository issues page](https://github.com/OpenCDSS/cdss-app-statecu-fortran/issues).
	1. The issue title should short and clear, for example "Missing data not handled in ABC file" (which will be indicated as a `bug` below) or
	"Need report for ABC" (which will be indicated as an `enhancement` below).
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

StateCU testing has traditionally not been automated and has relied on running model datasets to confirm output.
Testing is complex due to the following issues:

1. Software needs to be tested for gfortran.
2. Software needs to be tested for 32-bit gfortran (current) and 64-bit gfortran (desirable).
3. Software needs to be tested for Windows and Linux versions (desirable).
4. Software needs to be tested on small datasets such as the training examples mentioned in documentation
(but need to be updated to current CDSS standards).
5. Software needs to be tested on full datasets such as CDSS basin datasets, for each response file and program option.
	1. For example, check water balance.
6. Software needs to be tested on daily and monthly datasets.

The StateCU testing approach is being updated to be more rigorous and automated:

* [cdss-app-statecu-fortran-test](https://github.com/OpenCDSS/cdss-app-statecu-fortran-test)
repository is used for tests, and is under development
* Rely on TSTool and other software to automate tests
* The above repository includes scripts to run small tests (examples)
* The above repository includes scripts to run large tests (full datasets)
