# cdss-website-opencdss #

This repository contains the content for the OpenCDSS project website,
which is the umbrella project for open source
[Colorado's Decision Support Systems (CDSS)](http://cdss.state.co.us) software.

See the [deployed OpenCDSS website](http://opencdss.state.co.us/opencdss/).

* [Repository Contents](#repository-contents)
* [Development Environment](#development-environment)
* [Editing and Viewing Content](#editing-and-viewing-content)
* [Deploying the Website](#deploying-the-website)
* [License](#license)
* [Contributing](#contributing)
* [Maintainers](#maintainers)
* [Contributors](#contributors)
* [Release Notes](#release-notes)

------------------

## Repository Contents ##

The repository contains the following:

```text
cdss-website-opencdss/  Repository name and main folder.
  .github/              Files specific to GitHub such as issue template.
  .gitattributes        Typical Git configuration file.
  .gitignore            Typical Git configuration file.
  README.md             This file.
  build-util/           Useful scripts to view, build, and deploy documentation.
  docs/                 Reserved for "GitHub Pages" if website is pubished via such an approach.
  mkdocs-project/       Typical MkDocs project for this documentation.
    mkdocs.yml          MkDocs configuration file for website.
    docs/               Folder containing source Markdown and other files for website.
    site/               Folder created by MkDocs containing the static website - ignored using .gitignore.

```
A recommended but not required folder structure to contain the repository files on the local computer is:

```
C:\Users\user\                  Windows user files.
  cdss-dev/                     CDSS development files.
    Website-OpenCDSS/           This product.
      git-repos/                Git repositories for the website.
        cdss-website-opencdss/  The repository files, as shown above.
```

## Development Environment ##

The development environment for contributing to this project requires installation of Python, MkDocs, and Material MkDocs theme.
Python 2 has been used for development but MkDocs with Python 3 is known to also work.
See [OWF / Learn MkDocs](http://learn.openwaterfoundation.org/owf-learn-mkdocs/) for information about MkDocs.

## Editing and Viewing Content ##

If the development environment is properly configured, edit and view content as follows:

1. Edit content in the `mkdocs-project/docs` folder and update `mkdocs-project/mkdocs.yml` as appropriate.
2. Run the `build-util/run-mkdocs-serve-8000.sh` script in Cygwin, Linux, Git Bash, or equivalent.
3. View contents in a web browser using URL `http://localhost:8000`.

The above process could be adapted to use a Windows batch files if necessary.

## Deploying the Website ##

The website is deployed by running the script `build-util/copy-to-co-dnr-gcp.sh` in Git Bash,
which copies the `mkdocs-project/site` folder to the [deployed website location](http://opencdss.state.co.us/opencdss/)
as a static website.

## License ##

The license for this documentation is the [Creative Commons CC-BY 4.0 license](LICENSE.md).

## Contributing ##

It is expected that most contributions to this project will be made by core OpenCDSS contributors,
in order to align OpenCDSS with State of Colorado programs.
However, suggestions are welcome and will be considered.
Contribute to the documentation as follows:

1. Use GitHub repository issues to report minor issues and maintainers will respond.
2. Use GitHub pull requests.

## Maintainers ##

This repository is maintained by the OpenCDSS team.

## Release Notes ##

The following are major updates for the documentation.
See the GitHub issues for details.

* 2019-04-27 - Update to use opencdss.state.co.us.
* 2018-07-31 - Update to current status with more guidance for participants.
* 2018-03-12 - Initial version.
