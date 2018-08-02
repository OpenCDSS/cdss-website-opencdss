# OpenCDSS / Licensing #

This page discusses licensing of CDSS software consistent with OpenCDSS.

* [Introduction](#introduction)
* [License Selection and Implementation](#license-selection-and-implementation)
* [Copyright Assignment and Contributions](#copyright-assignment-and-contributions)
* [State of Colorado Contract Language](#state-of-colorado-contract-language)
* [State Contributions to Other Software Projects](#state-contributions-to-other-software-projects)

-------------

## Introduction ##

Software development for State of Colorado software tools has traditionally not been managed as open source projects.
Software is often developed by consultants in order to "get the work done",
including Excel spreadsheets and one-off deliverables.
CDSS software tools have specific niche purposes and will generally not be distributed as a mass-market software.
Consequently, a simple disclaimer has traditionally been attached to software.
This approach is inadequate, especially for more significant software tools,
because it does not clearly spell out the terms of use for software code.

The OpenCDSS project is implementing open source projects for each CDSS software product,
including assigning open source licenses to each product.
The license selection is based on a number of criteria that are important to the State of Colorado, including:

1. Ensure that the software remains open source consistent with the spirit of the open source ethic.
2. Avoid the situation where the State (and taxpayers) pay for software development and are later prevented from
using the software or accessing code that was paid for.
3. Encourage collaboration and use by a wide array of entities.
4. Consider license compatibility to ensure that use and integration constraints are not placed on software.

Appropriate open source licenses are currently being evaluated given the above criteria
and the software component inventory for each product.
When the determination is made, the code repositories for a software tool will be made public and the license
will be attached to software according to the requirements of the license.
All software developers and users will be expected to adhere to the license agreement.

## License Selection and Implementation ##

Based on progress to date, the GPL 3.0 license is expected to be used for most, if not all, CDSS software.
GPL 3.0 has been recommended based on a review of the criteria in the previous section and
software component licenses.  Assuming that GPL 3.0 is selected, implementation of the GPL 3.0 license will
include the following:

1. Indicate the license in each GitHub repository by including a GPL 3.0 LICENSE file with standard language.
2. Add a short license statement to the top of each source file, referencing GPL 3.0 and he repository location.
3. Add a short license statement to the "About" dialog for programs with graphical user interfaces.
4. Implement Contributor License Agreement protocol for new contributions.

## Copyright Assignment and Contributions ##

Software code (and other products such as documentation) are intellectual property (IP) that is owned (copyrighted) by someone,
typically by default the creator of the content.
In the context of CDSS and other State of Colorado projects, the software tools have been paid for with funding
from the State of Colorado or others, with the software features being enhanced over time.
Transition to open source projects involves two main steps:

1. Copyright assignment of the original work to the State of Colorado.
2. Implementing Contributor License Agreements for new contributions.

### Copyright Assignment ###

Copyright assignment is an agreement between a party and the State of Colorado to confirm assignment of the copyright (ownership)
of software to the State.  This ensures that original developers of the software, such as contractors,
cannot claim ownership if the products later and deny the State from access to code and other deliverables.
State of Colorado contracts typically have language that indicates that project deliverables will be owned by the State.
However, the language has changed over time and older contracts did not consider IP in detail that is needed.
To ensure that there is no confusion, early developers of CDSS software have been asked to sign agreements
assigning (or recognizing) that the State is the owner of software and other products.

Current State of Colorado contracts (see [State of Colorado Contract Language section](#state-of-colorado-contract-language)) include more specific language to address assignment of copyright to the State for
project deliverables.

### Contributor License Agreements ###

A Contributor License Agreement (CLA) is an agreement between a software contributor and the copyright owner
(State of Colorado) that indicates that the contributor understands that they are contributing to the project.
OpenCDSS is implementing a CLA consistent with other open source projects, which will allow he contribution to
be used in open source projects as well as be used by the contributor as they see fit,
thereby providing flexibility in use.

Contributed content will comply with the main license and is copyrighted to the State of Colorado
within the OpenCDSS projects.

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
