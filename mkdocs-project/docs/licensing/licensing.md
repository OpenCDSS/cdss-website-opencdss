# OpenCDSS / Licensing #

This page discusses CDSS software licensing consistent with OpenCDSS.

* [Introduction](#introduction)
* [License Selection and Implementation](#license-selection-and-implementation)
* [Copyright Assignment and Contributions](#copyright-assignment-and-contributions)
* [State of Colorado Contract Language](#state-of-colorado-contract-language)
* [State Contributions to Other Software Projects](#state-contributions-to-other-software-projects)

-------------

## Introduction ##

Software developed for the State of Colorado has traditionally not been managed as open source projects.
Software is often developed by consultants in order to "get the work done",
including Excel spreadsheets and one-off deliverables.
CDSS software tools have specific niche purposes and are generally not distributed as mass-market software.
Consequently, a simple disclaimer has traditionally been attached to software.
However, this simple approach is inadequate, especially for more significant software tools,
because it does not clearly spell out the ownership and terms of use for software code.

The OpenCDSS project implemented open source projects for major CDSS software product
(with more products to be added over time),
including assigning open source licenses to each product.
The license selection was based on a number of criteria that are important to the State of Colorado, including:

1. Ensure that the software remains open source consistent with the spirit of the open source ethic.
2. Allow the State of Colorado to retain oversight of the software.
3. Encourage collaboration and use by a wide array of entities.
4. Consider license compatibility to ensure that use and integration constraints are not placed on software.

## License Selection and Implementation ##

Based on consideration of the factors in the previous section and a compatibility review of software component licenses,
the GPL 3.0 license was selected as the license for CDSS software.
Implementation of the GPL 3.0 license involves the following:

1. Indicate the license in each GitHub repository by including a GPL 3.0 LICENSE file with standard language.
For readability, a Markdown version of the license is typically used, for example see the
[StateMod LICENSE.md file](https://github.com/OpenCDSS/cdss-app-statemod-fortran/blob/master/LICENSE.md).
2. Add a short copyright and license notice to the top of each source file, referencing GPL 3.0 and the repository location.
For example, see the [StateMod main program](https://github.com/OpenCDSS/cdss-app-statemod-fortran/blob/master/src/main/fortran/statem.for).
3. Add a short copyright and license notice to the "About" dialog for programs with graphical user interfaces.
Similarly, add a short copyright and license notice to the "help" command line option.
4. Implement Contributor License Agreement protocol for contributions.
This allows a contributor's code to be used in the open source project while also
granting the contributor the right to use the code in their own projects.

## Copyright Assignment and Contributions ##

Software code (and other products such as documentation) are intellectual property (IP) that is owned (copyrighted) by someone,
typically by default the creator of the content.
In the context of CDSS and other State of Colorado projects, the software tools have been paid for with funding
from the State of Colorado or others, with the software features being enhanced over time.
Transition to open source projects involves two main steps:

1. Copyright assignment of the original work to the State of Colorado.
2. Implementing Contributor License Agreement for new contributions.

### Copyright Assignment ###

Copyright assignment is an agreement between a party and the State of Colorado to confirm assignment of the copyright (ownership)
of software to the State.  This ensures that original developers of the software, such as contractors,
cannot claim ownership of the products later and deny the State from access to code and other deliverables.
State of Colorado contracts typically have language that indicates that project deliverables will be owned by the State.
However, the language has changed over time and older contracts did not consider IP in detail that is needed.
To ensure that there is no confusion, early developers of CDSS software were asked to sign agreements
assigning (or recognizing) that the State is the owner of software and other products.

Current State of Colorado contracts (see [State of Colorado Contract Language section](#state-of-colorado-contract-language)) include more specific language to address assignment of copyright to the State for
project deliverables.

To simplify copyright, the OpenCDSS projects have adopted a standard Contributor License Agreement,
which covers previous and current contributions.  See the next section.

### Contributor License Agreement ###

A Contributor License Agreement (CLA) is an agreement between a software contributor and the copyright owner
(State of Colorado) that indicates that the contributor understands that they are contributing to the project.
OpenCDSS has implemented a CLA consistent with other open source projects, which allows the contribution to
be used in OpenCDSS open source projects as well as be used by the contributor as they see fit,
thereby providing flexibility in use.

Contributed content will comply with the main license and is copyrighted to the State of Colorado
within the OpenCDSS projects.

In order to contribute any content to OpenCDSS,
first complete the [OpenCDSS Contributor License Agreement](OpenCDSS-CLA-v1-2019-02-12.pdf) and then
email a scanned copy to the [OpenCDSS email address](mailto:DNR_OpenCDSS@state.co.us) or the [OpenCDSS contact](brian.macpherson@state.co.us).

## State of Colorado Contract Language ##

The State of Colorado uses standard contract language to address how intellectual property is handled.
The following excerpts from contracts are relevant and are explained here to help OpenCDSS contractors and contributors
understand terms.

**Need to explain how this is consistent with CLA or takes the place of a CLA.**

## State Contributions to Other Software Projects ##

There may be cases where an existing software project that is owned/copyrighted by another entity is
enhanced as part of a project funded by the State of Colorado.
In this case, the State and persons acting on its behalf may be required to sign CLAs to contribute
to those projects.  **TODO - how does State of Colorado contract language handle this?**
