# OpenCDSS / Licensing #

This page discusses CDSS software licensing consistent with OpenCDSS.

* [Introduction](#introduction)
* **[How to Contribute Code and Other Content to Open Source Projects](#how-to-contribute-code-and-other-content-to-open-source-projects)**
* [License Selection and Implementation](#license-selection-and-implementation)
* [Copyright Assignment and Contributions](#copyright-assignment-and-contributions)

-------------

## Introduction ##

Software developed for the State of Colorado has traditionally not been managed as open source projects.
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

## How to Contribute Code and Other Content to Open Source Projects ##

OpenCDSS open source projects will accept contributions upon review.
To submit code or other content, complete the following process **one time**:

1. Print the [Contributor License Agreement (CLA)](licensing-resources/OpenCDSS-CLA-v1.1-2019-08-12.pdf) and sign.
The CLA applies to individuals and assumes that any potential constraints from employers have been
resolved by the individual.
2. Scan the signed CLA and email to Scan the signed CLA and email to
the [OpenCDSS contact](mailto:brian.macpherson@state.co.us).
See the [Copyright Assignment and Contributions](#copyright-assignment-and-contributions)
section for more information about the CLA.
A PDF scan is preferred but if necessary an image of the signature page is OK.
This is a blanket CLA that will allow contributions to any OpenCDSS project.

The management team will coordinate acceptance of the CLA with project teams.
Follow the development protocols for the specific project (see product pages on this website).

## License Selection and Implementation

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

The CLA may change over time but major changes are not expected.

In order to contribute any content to OpenCDSS, follow the instructions in the
[How to Contribute Code and Other Content to Open Source Projects](#how-to-contribute-code-and-other-content-to-open-source-projects)
section of this page.
