# OpenCDSS / StateCU #

StateCU is the State of Colorado's consumptive use model.
Use the following links to download StateCU software.

* **[CDSS StateCU Software Downloads (official releases)](http://www.colorado.gov/pacific/cdss/statecu/) - releases that support State of CO projects**
* **[OpenCDSS StateCU Software Downloads](http://opencdss.state.co.us/statecu/) - archive and development releases**

--------------

Additional StateCU information and resources are available below:

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

The following sections provide background and information that is useful to StateCU users.
StateCU users generally fall into two categories: "modelers" and "users of model results".
The former develops model input and runs StateCU on the model input dataset whereas the latter may
just review models results that someone else has run.
The CDSS approach tends to support modelers and there is an opportunity to improve access to model results.
This is challenging because model results files can be very large and finding a way to access and
view the results, such as on the web, presents technical challenges.
A new project has been funded to publish complete StateMod model input and results on the web
to facilitate access without needing to run the model, and the results of that project may
improve StateCU dataset publishing.

### Background ###

StateCU is the State of Colorado's consumptive use model,
which simulates consumptive use for agricultural demands.
The model can be run using monthly or daily timestep depending on consumptive use method.

Input to the model consists of consumptive use locations such as climate stations and ditch structures,
climate time series, and crop data.
Input is typically created using "Data Management Interface" (DMI) software
including [TSTool](tstool.md) and [StateDMI](statedmi.md),
which automate processing of "command files" to create model input files.

Output from StateCU consists of large binary files with time series data,
large text file reports, and log and check files, depending on run options.
Binary files are often processed using TSTool.

The [StateCU GUI](statecu-gui.md) (Graphical User Interface)
simplifies creation of basic datasets, running datasets, and viewing results.
Modelers often use the TSTool and StateDMI software to
create input files because the approach is automated and
can be repeated, whereas the GUI can be used to edit simpler datasets.

StateCU datasets are not maintained in GitHub and must be downloaded from the
[CDSS website](https://www.colorado.gov/pacific/cdss/modeling-data).

### User Documentation ###

* Latest [User Documentation](http://opencdss.state.co.us/statecu/latest/doc-user/)
* The legacy StateCU User's Manual is available on the [CDSS StateCU page](https://www.colorado.gov/pacific/cdss/statecu).
* Model datasets have documentation - see the
[CDSS website](https://www.colorado.gov/pacific/cdss/modeling-dataset-documentation) for model datasets and documentation.

### License ###

The software is licensed using [GPL v3+ license](https://github.com/OpenCDSS/cdss-app-statecu-fortran/blob/master/LICENSE.md).

### Report an Issue ###

To report an issue or request an enhancement,
use the [StateCU GitHub repository issues](https://github.com/OpenCDSS/cdss-app-statecu-fortran/issues).
Software developers will evaluate the issue.

## Developer Information ##

StateCU is written in Fortran (Fortran 77 with some newer code).
The OpenCDSS project uses the open source gfortran compiler.

### Software Developers ###

The State of Colorado has designated the following as product contacts for development.

|**Person**             |**GitHub User**|**Role/Comment**|
|-----------------------|---------------|--------------------------------------------------------------------------------|
|Kelley Thompson (DWR)  |kelleythompson |State of Colorado lead developer for StateCU                                    |
|Brian Macpherson (CWCB)|macphersonbr   |State of Colorado CWCB lead                                                     |
|Erin Wilson (WWG)      |               |Legacy developer                                                                |
|Steve Malers (OWF)     |smalers        |OpenCDSS lead, facilitating implementation of open source project               | 

### Developer Documentation ###

* Latest [Developer Documentation](http://opencdss.state.co.us/statecu/latest/doc-dev/).

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

StateCU software should be updated using a "feature branch" approach as per the [OpenCDSS Workflow](http://opencdss.state.co.us/opencdss/workflow/workflow/)
and StateCU developer documentation.

### Adding an Issue ###

The GitHub issues tool is how developers track issues and communicate on progress.
For an overview of using GitHub issues, see ["Mastering Issues"](https://guides.github.com/features/issues/).
The following general procedure should be to used add an issue (bug, enhancement request, question, etc.).

1. Add a ***New issue*** on the [StateCU code repository issues page](https://github.com/OpenCDSS/cdss-app-statecu-fortran/issues).
	1. The issue title should short and clear, for example "X calculation is incorrect"
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
