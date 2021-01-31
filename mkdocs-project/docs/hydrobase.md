# OpenCDSS / HydroBase #

HydroBase is the State of Colorado's database for water resources data.
Use the following links to download HydroBase software and database.
**Local installation is typically only needed for modeling and advanced data analysis.**

* **[Latest HydroBase Installer](https://dnrftp.state.co.us/DWR/Modeling/HydroBase/CDSSLocalHydroBase_Installer.zip) - clicking
on the link will download the installer, which when run installs SQL Server Express and HydroBase Database Manager**
* **[HydroBase Database Archive](https://dnrftp.state.co.us/DWR/Modeling/HydroBase/) - archive of HydroBase snapshots**

--------------

Additional HydroBase information and resources are available below:

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

The following sections provide background and information that is useful to HydroBase database users.
HydroBase users generally fall into two categories:

* General data users
	+ HydroBase is typically accessed using [CDSS Online Tools](https://dwr.state.co.us/Tools),
	not installing a local copy of HydroBase
	+ HydroBase can also be accessed programatically using
	[HydroBase REST web services](https://dwr.state.co.us/rest/get/help)
* Modelers
	+ often download and install HydroBase on a local computer
	+ SQL Server Express and HydroBase Database Manager software also are installed
	+ once installed, use software such as TSTool and StateDMI to automate processing
	HydroBase data into StateCU and StateMod model files

Downloading and installing HydroBase on a local computer is generally discouraged unless
there is a need to create CDSS model files or perform other advanced analysis.
A higher level of skill is often necessary to use HydroBase on a local computer.

### Background ###

HydroBase is the State of Colorado's database for water resources data,
including structure and station data, water rights, and many other data types.
HydroBase has a long history of providing data to State of Colorado staff and the public,
and is central to water planning and administration in Colorado.

[Colorado's Decision Support Systems (CDSS)](https://cdss.colorado.gov/)
relies on HydroBase for input to models including [StateCU](statecu.md) and [StateMod](statemod.md).
The [TSTool](tstool.md) and [StateDMI](statedmi.md) software automate processing of
"command files" to create model input files.

### User Documentation ###

* See the [CDSS HydroBase](https://cdss.colorado.gov/software/hydrobase) web page for more information.
* **Need to insert link for HydroBase table descriptions, or is the REST web services documentation the main source now?**
* See the [HydroBase Installation Instructions](https://opencdss.state.co.us/hydrobase/index.html) - **need to rectify with the Word/PDF documentation from Doug Stenzel**
* See the [TSTool Troubleshooting](http://opencdss.state.co.us/tstool/latest/doc-user/troubleshooting/troubleshooting/) documentation for specific HydroBase issues

### License ###

HydroBase currently does not have a specific license assigned.
It is made available to the public by the State of Colorado.

### Report an Issue ###

**Need to insert contact information.**

## Developer Information ##

HydroBase is maintained by the State of Colorado.

### Software Developers ###

The State of Colorado has designated the following as product contacts for development.

|**Person**             |**GitHub User**|**Role/Comment**|
|-----------------------|---------------|--------------------------------------------------------------------------------|
|Brian Macpherson (CWCB)|macphersonbr   |State of Colorado CWCB lead                                                     |

### Developer Documentation ###

HydroBase is maintained by the State of Colorado.
See the [User Documentation](#user-documentation) for additional information resources.

### Development Environment ###

HydroBase uses Microsoft SQL Server.
The downloadable CDSS version of HydroBase uses SQL Server Express, which is limited to 10 GB in size.
This database is read-only and snapshots are made available periodically to reflect annual data updates.

### Version Control ###

HydroBase snapshot releases use a name `HydroBase_CO_YYYYMMDD` to reflect the database release date.
The version number should be used when reporting issues with local HydroBase installations.
The appropriate snapshot can be used with specific projects and software testing.

### Adding an Issue ###

**Need to describe how to report an issue.**

### Testing ###

HydroBase database and software integration are tested differently by each software tool
that uses HydroBase.  See the developer documentation for each CDSS software tool.
HydroBase snapshots from the archive can be downloaded and used as needed to implement
software testing specific to a HydroBase version.
