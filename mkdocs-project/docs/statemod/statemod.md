# OpenCDSS / StateMod #

StateMod is the State of Colorado's water allocation model.

* [Background](#background)
* [Product Leadership](#product-leadership)
	+ [Software Developers](#software-developers)
	+ [Software User Expertise](#software-user-expertise)
* [License](#license)
* [CDSS Web Page](#cdss-statemod-web-page)
* [User Information](#user-information)
* [Developer Information](#developer-information)
	+ [Documentation](#documentation)
	+ [Development Environment](#development-environment)
	+ [Version Control](#version-control)
	+ [Testing](#testing)

------------------

## Background ##

StateMod is the State of Colorado's water allocation model,
which simulates allocation of natural streamflow (supply) to demands and operations.
It attempts to simulate operations under Colorado's Prior Appropriation water law.
The model can be run using monthly or daily timestep,
depending on supplied input data.

Input to the model consists of a river network definition,
stations/nodes (stream gage, diversion, reservoir, wells, other),
and data associated with stations (water rights, time series, etc.).
Input is typically created using "Data Management Interface" (DMI) software
including [TSTool](../tstool/tstool) and [StateDMI](../statemod/statedmi),
which automate processing of "command files" to create model input files.

Output from StateMod consists of large binary files with time series data,
large text file reports, and log and check files, depending on run options.
Binary files are often processed using TSTool.

The [StateMod GUI](../statemod-gui/statemod-gui) (Graphical User Interface) was developed in
the Colordo River Decision Support System (CRDSS) project but has not been well maintained.
Modelers often prefer to use the TSTool and StateDMI software to
create input files because the approach is automated and
can be repeated, whereas the GUI, if it is allowed to edit files,
introduces changes that are not represented in the DMI command files.
These issues could be resolved with more investment.

The Open Water Foundation is advocating for maintaining StateMod datasets in GitHub
for version control but this approach has not been adopted by the State.

## Product Leadership ##

StateMod software development leadership is in transition.
The long-time developer, Ray Bennett, retired from DWR several years ago and has been providing support as a consultant.
Ray's knowledge needs to be transitioned to new developers.

The OpenCDSS effort has focused on putting StateMod code under version control and
implementing an updated development environment.
Steve Malers (Open Water Foundation) is leading this effort.

## Software Developers ##

The State of Colorado has designated the following as product contacts for development.

|**StateMod Developer** |**GitHub User**|**Comment**|
|-----------------------|---------------|--------------------------------------------------------------------------------|
|Ray Bennett            |Rayrbennett    |Legacy developer, typically emails changes but does not use Git/GitHub directly.|
|Kelley Thompson (DWR)  |kelleythompson |State of Colorado lead developer for StateMod.                                  |
|Brian Macpherson (CWCB)|macphersonbr   |State of Colorado CDSS lead.                                                    |
|Steve Malers (OWF)     |smalers        |OpenCDSS lead.                                                                  | 

## Software User Expertise ##

The following are expert StateMod users that are typically involved in defining software functionality and testing.

|**StateMod User**       |**GitHub User**|**Comment**|
|------------------------|---------------|--------------------------------------------------------------------------------|
|Brian Macpherson (CWCB) |macphersonbr   |Experience with West Slope, and South Platte models.                            |
|Kara Sobieski (WWG)     |karasobieski   |Extensive modeling experience.                                                  |

## CDSS StateMod Web Page ##

The CDSS web page provides access to StateMod software and model datasets:

* [StateMod Software](http://cdss.state.co.us/software/Pages/StateMod.aspx)
* [StateMod Datasets](http://cdss.state.co.us/Modeling/Pages/SurfaceWaterStateMod.aspx)

## License ##

The [license is being determined](license).  GPL 3.0 has been recommended and is being reviewed.

## User Information ##

StateMod users generally fall into two categories: "modelers" and "users of model results".
The former develops model input and runs StateMod on the model dataset whereas the latter may
just review models results that someone else has run.
The CDSS approach tends to support modelers and there is an opportunity to improve access to model results.
This is challenging because model results files can be very large and finding a way to access and
view the results, such as on the web, presents technical challenges.

Information for StateMod users consists of:

* Model datasets have documentation - see the
[CDSS website](http://cdss.state.co.us/Modeling/Pages/SurfaceWaterStateMod.aspx) for model datasets and documentation.
* The StateMod User's Manual is available on the [CDSS StateMod page](http://cdss.state.co.us/software/Pages/StateMod.aspx).
* There is a need for user-friendly documentation, for example navigable documentation such as this documentation.

## Developer Information ##

StateMod is written in Fortran (Fortran 77 with some newer code)
and consists of approximately 250 source modules and 140,000 lines of code.
The accepted version has been compiled using an older commercial Lahey 95 compiler,
whereas OpenCDSS is transitioning to the open source gfortran compiler.

A small project is underway to evaluate options for alternative programming languages for the next generation of StateMod.
This is a research study and near-term changes to StateMod language are not planned.

### Documentation ###

The OpenCDSS project has created
[Developer Documentation](http://learn.openwaterfoundation.org/cdss-learn-statemod-dev/),
which should be followed by all developers.

### Development Environment ###

Compilation is via a makefile, although the OpenCDSS project has evaluated using Eclipse Photran.
Ray Bennett typically uses UltraEdit for editing the code.
See the [Developer Documentation](http://learn.openwaterfoundation.org/cdss-learn-statemod-dev/)
for information about the development environment.
Important information includes:

* Lahey and gfortran compile from the same source code.
This is possible because Lahey produces `.obj` object files and gfortran produces `.o` object files,
and the compile scripts create different executable names.
* A new naming convention is being phased in for executable program names in order
to differentiate between Lahey/gfortran, 32/64 bit, and Windows/Linux.

### Version Control ###

StateMod code and other electronic assets are housed in the following repositories.
Private repositories are hosted under the Open Water Foundation GitHub account until open source license is released,
at which time the repositories will be transferred to the OpenCDSS account:

|**Content**                     |**Repository**|**Comment**|
|--------------------------------|--------------|-----------|
|Software code                   |[cdss-app-statemod-fortran](https://github.com/OpenWaterFoundation/cdss-app-statemod-fortran)|Private until released with public license.|
|Automated tests                 |[cdss-app-statemod-fortran-test](https://github.com/OpenWaterFoundation/cdss-app-statemod-fortran-test)|Envisioned, need to move to OpenCDSS on GitHub.|
|Developer documentation (MkDocs)|[cdss-app-statemod-fortran-doc-dev](https://github.com/OpenWaterFoundation/cdss-app-statemod-fortran-doc-dev)|Need to move to OpenCDSS on GitHub.|
|User documentation (MkDocs)     |[cdss-app-statemod-fortran-doc-user](https://github.com/OpenWaterFoundation/cdss-app-statemod-fortran-doc-user)|Envisioned, need to outline and move to OpenCDSS on GitHub.|

StateMod software should be updated using a "feature branch" approach as per the [OpenCDSS Workflow](../workflow)
and StateMod developer documentation.

### Testing ###

StateMod testing has traditionally not been automated and has relied on running model datasets to confirm output.
Testing is complex due to the following issues:

1. Software needs to be tested for Lahey compared to gfortran (at least until gfortran version is vetted).
2. Software needs to be tested for 32-bit Lahey (current), 32-bit gfortran (current) and 64-bit gfortran (desirable).
3. Software needs to be tested for Windows and Linux versions (desirable).
4. Software needs to be tested on small datasets such as the legacy examples mentioned in documentation
(but need to be updated to current CDSS standards).
5. Software needs to be tested on full datasets such as CDSS basin datasets, for each response file and program option.
	1. For example, check the `*.xwb` water balance report to make sure the overall water balance is OK.
	2. Improvements are needed to understand how decisions are made at each timestep, to confirm logic.
6. Software needs to be tested on daily and monthly datasets.
	1. This is challenging because daily models have not typically been the focus.

The level of effort for the above is daunting and needs to be addressed by implementing standard
test protocols that rely on automation.  This is in progress.

This approach is being updated to be more rigorous and automated:

* [cdss-app-statemod-fortran-test](https://github.com/OpenWaterFoundation/cdss-app-statemod-fortran-test)
repository is used for tests, and is under development
* Rely on TSTool and other software to automate tests
* The above repository includes scripts to run small tests (examples)
* The above repository includes scripts to run large tests (full datasets)
