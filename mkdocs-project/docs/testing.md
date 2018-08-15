# OpenCDSS / Testing #

This page summarize OpenCDSS software testing.

* [Introduction](#introduction)
* [Automated Testing Frameworks](#automated-testing-frameworks)

-----------------

## Introduction ##

Software testing is important to ensure that software functionality is as expected.
Automated testing is necessary to be able to efficiently implement testing,
especially for complex software.
For example, TSTool has nearly 2000 automated tests to confirm functionality for
hundreds of commands.

Automated testing for CDSS software varies by product, and is discussed in each product's developer documentation.
It is expected that implementing automated testing for CDSS tools will continue to be a significant effort,
especially for StateMod. StateMod requires testing of many individual features and receives large input 
datasets, resulting in complex interactions and outputs.

## Automated Testing Frameworks ##

Automated testing frameworks provide the infrastructure to run automated tests.
Most languages have a default testing framework that has been developed over time, for example `Junit` for Java programs.
Most development IDEs, such as Eclipse for Java, provide features to integrate with one or more testing frameworks.

Fortran, which is the language used for StateCU and StateMod, does not provide many options for automated testing.
However, testing model functionality may not benefit from low-level language testing frameworks for functions and subroutines.
Instead, it is often more effective to test results by running StateMod operationally for small datasets.

Preliminary evaluation of testing frameworks for StateMod are focusing on using existing testing frameworks,
such as TSTool testing features that can be used to compare text files and time series, and Python testing tools.
Any solution will require identifying and configuring small tests for specific functionality,
and larger tests to confirm overall functionality where multiple components interact.

See the testing discussion for each product for more details.
