#!/bin/sh
#
# Copy the MkDocs site/* contents to the CO DNR GCP website
# - replace all the files on the web with local files

# Supporting functions, alphabetical

buildMkDocsSite() {
	cd ${mkdocsProjectFolder}
	if [ "$operatingSystem" = "cygwin" -o ${operatingSystem} = "linux" ]; then
		# MkDocs is installed in a standard location
		mkdocs build --clean
	elif [ "$operatingSystem" = "mingw" ]; then
		# Use the Windows Python
		py -m mkdocs build --clean
	else
		echo ""
		echo "Don't know how to run on operating system $operatingSystem"
		exit 1
	fi
}

# Make sure the MkDocs version is consistent with the documentation content
# - require that at least version 1.0 is used because of use_directory_urls = True default
# - must use "file.md" in internal links whereas previously "file" would work
# - it is not totally clear whether version 1 is needed but try this out to see if it helps avoid broken links
checkMkdocsVersion() {
	# Required MkDocs version is at least 1
	requiredMajorVersion="1"
	# On Cygwin, mkdocs --version gives:  mkdocs, version 1.0.4 from /usr/lib/python3.6/site-packages/mkdocs (Python 3.6)
	# On Debian Linux, similar to Cygwin:  mkdocs, version 0.17.3
	if [ "$operatingSystem" = "cygwin" -o "$operatingSystem" = "linux" ]; then
		mkdocsVersionFull=$(mkdocs --version)
	elif [ "$operatingSystem" = "mingw" ]; then
		mkdocsVersionFull=$(py -m mkdocs --version)
	else
		echo ""
		echo "Don't know how to run on operating system $operatingSystem"
		exit 1
	fi
	echo "MkDocs --version:  $mkdocsVersionFull"
	mkdocsVersion=$(echo $mkdocsVersionFull | cut -d ' ' -f 3)
	echo "MkDocs full version number:  $mkdocsVersion"
	mkdocsMajorVersion=$(echo $mkdocsVersion | cut -d '.' -f 1)
	echo "MkDocs major version number:  $mkdocsMajorVersion"
	if [ "$mkdocsMajorVersion" -lt $requiredMajorVersion ]; then
		echo ""
		echo "MkDocs version for this documentation must be version $requiredMajorVersion or later."
		echo "MkDocs mersion that is found is $mkdocsMajorVersion, from full version ${mkdocsVersion}."
		exit 1
	else
		echo ""
		echo "MkDocs major version ($mkdocsMajorVersion) is OK for this documentation."
	fi
}

# Determine the operating system that is running the script
# - mainly care whether Cygwin or MINGW
checkOperatingSystem()
{
	if [ ! -z "${operatingSystem}" ]; then
		# Have already checked operating system so return
		return
	fi
	operatingSystem="unknown"
	os=`uname | tr [a-z] [A-Z]`
	case "${os}" in
		CYGWIN*)
			operatingSystem="cygwin"
			;;
		LINUX*)
			operatingSystem="linux"
			;;
		MINGW*)
			operatingSystem="mingw"
			;;
	esac
}

# Check the source files for issues
# - the main issue is internal links need to use [](file.md), not [](file)
checkSourceDocs() {
	# Currently don't do anything but could check the above
	# Need one line to not cause an error
	:
}

# Parse the command parameters
parseCommandLine() {
	local d h l opt
	while getopts :dhl opt; do
		#echo "Command line option is ${opt}"
		case $opt in
			d) # Indicate dry run
				dryrun="-n"
				;;
			h) # Usage
				printUsage
				exit 0
				;;
			\?)
				echo "Invalid option:  -$OPTARG" >&2
				exit 1
				;;
			:)
				echo "Option -$OPTARG requires an argument" >&2
				exit 1
				;;
		esac
	done
}

# Print the usage
printUsage() {
	echo ""
	echo "Usage:  $0"
	echo ""
	echo "Copy the site files to the website folder."
	echo "There is only one copy, no 'latest' or versioned copy."
	echo ""
	echo "-d dry run (print actions but don't execute upload)"
	echo "-h print usage"
	echo ""
}

# Sync the files to the cloud
syncFiles() {
	local exitStat
	exitStat=0
	# Change to script folder
	cd ${scriptFolder}

	# Now sync the local files up to Google Cloud
	# - the -m option causes operations to run in parallel, which can be much faster
	# - the -d option means delete extra files in destination
	# - the -r option means recursive to sync the whole folder tree
	# Always upload to the main folder.
	echo ""
	echo "Copying the documentation..."
	gsutil.cmd -m rsync -d -r ${dryrun} $siteFolder ${gsFolder}
	exitStat=$?
	if [ $exitStat -ne 0 ]; then
		return $exitStat
	fi
	return $exitStatus
}

# Entry point for the script

# Check the operating system
checkOperatingSystem

# Make sure the MkDocs version is OK
checkMkdocsVersion

# Check the source files for issues
checkSourceDocs

# Get the location where this script is located since it may have been run from any folder
scriptFolder=`cd $(dirname "$0") && pwd`
gitRepoFolder=$(dirname "$scriptFolder")
gitReposFolder=$(dirname "$gitRepoFolder")
mkdocsProjectFolder=$gitRepoFolder/mkdocs-project
siteFolder=$mkdocsProjectFolder/site

# Set --dryrun to test before actually doing
dryrun=""
gsFolder="gs://opencdss.state.co.us/opencdss"

# Parse the command line
parseCommandLine $@

# First build the site so that the "site" folder contains current content.
# - "mkdocs serve" does not do this
buildMkDocsSite

# Sync the files to the cloud
syncFiles

exit $?
