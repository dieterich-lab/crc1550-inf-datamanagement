---
title: 'SODAR: System for Omics Data Access and Retrieval.'
teaching: 0
exercises: 0
output: pdf_document
---

::: questions
-   How to use SODAR for data and metadata entry?
:::

::: objectives
-   Introduces SODAR
-   Oviewview of the main concepts
-   How the process for data and metadata upload works within the CRC1550-INF
:::

# Overview

![](fig/SodarLogo.svg)

**S**ystem for **O**mics **D**ata **A**ccess and **R**etrieval (**SODAR**) is a specialized system designed for managing data in OMICs research projects. The platform provides medical experts with a central location for navigating and coordinating data, connecting to other resources and systems. Key features of SODAR include project-based access control, modeling study design metadata, large-scale data storage, file validation, and various tools for data management. SODAR aims to address challenges faced by scientists working on OMICs studies by offering a user-friendly interface for managing multi-assay studies and organizing raw dataset, metadata and results in a single place. Most end users will use SODAR via its web-based GUI, while data stewards will use the REST APIs. SODAR server runs on the Django web server, models metadata with the ISA specification, and uses iRODS for file storage. SODAR is developed by the [Core Unit Bioinformatics](https://www.cubi.bihealth.org/) at the [Berlin Institute of Health](https://www.bihealth.org/). The software is written in Python 3 and freely available under the MIT license.

# SODAR components and data workflow

![](fig/clipboard-1870335311.png) Figure 1. Overview of data workflow with SODAR. The next sections will detail each component.

# SODAR server

The SODAR server is the main component of the system. It comprises several modules called Django apps, which are responsible for different tasks. Although these apps are not the utmost importance for the users, understanding the available apps allows users to understand the full potential of the system. The main apps are detailed in the [GitHub repository](https://github.com/bihealth/sodar-server?tab=readme-ov-file#technical-information) of the project and listed below:

-   **Samplesheets**: Modeling of study metadata in the ISA-Tab format
-   **Landingzones**: Management of file validation and uploads into iRODS
-   **Irodsadmin**: iRODS data administration helpers
-   **Irodsbackend**: Backend app for iRODS queries and operations
-   **Irodsinfo**: Display iRODS server information and create user configurations
-   **Ontologyaccess**: Parse, store and serve ontologies for local lookup
-   **Taskflowbackend**: Run iRODS transactions with full rollback for project and file operations

These apps are presented to end-users via the SODAR web-application:

![](fig/clipboard-3240582884.png) Figure 2: SODAR developers provide a demo instance at [this url](https://sodar-demo.cubi.bihealth.org/samplesheets/a1e84b38-568d-44e7-b81f-43ae81927187#/study/473c5d99-532b-4c31-a056-8e58d16a6bb7).

# iRODS server

iRODS stands for Integrated Rule-Oriented Data System, is the data management system that powers SODAR data and metadata management under-the-hood. Most user will not need to interact with iRODS directly. iRODS provides storage virtualization among heterogeneous file systems, meaning it allows data to be stored in different computers or external servers ('cloud') and still be systematic organized in terms of metadata. The usual use case is for organizing unstructured data, such OMICs experiments.

The iCAT server serves as a metadata catalog that supports large facility experimental data, linking all aspects of the research chain from proposal through to publication. It utilizes a relational database for storing metadata in the form of "triples," consisting of an attribute field, a value field, and a unit field.

An **iRODS collection** is a fundamental concept in iRODS that organizes data objects into a hierarchical structure. In iRODS, collections are similar to subdirectories and are used to group related data objects together. These collections do not reference the physical storage path (i.e., where the data is stored in the file system), allowing data objects within the same collection to be stored in different physical locations. Additionally, a data object in iRODS can have multiple replicas, which are exact copies of the file stored in different locations2

IRODs server has many features that are beyond the scope of this material.

#### Davrods

Davrods provides access to iRODS servers using the WebDAV protocol, a similar protocol to the one used by the CardioCloud. This feature enables users to link external tools, such as Jupyter notebooks, Integrated Genome Viewer (IGV), and Galaxy tools.

### SODAR naming and concepts

![](fig/clipboard-3896476926.png) Figure 3. SODAR project overview page.

#### Web-UI

SODAR web-UI is the main interface for users to interact with the system.

-   **Navigation Sidebar**: On the left side, there's a vertical navigation bar with various options such as "Project Overview", and once a project is selected, "Sample Sheets", "Landing Zones", "Timeline," and "Members."

-   **Navigation Topbar:** A *search* bar, enable project or metadata search. *Help*, a link to the SODAR documentation. *User menu* drop-down so users access configurations and general information.

-   **Main Panel**: The bulk of the UI consists of the main panel, which changes depending on the section.

#### Members:

Members is a core feature for each project. This section provides an overview of user roles within a project, determining their level of access and capabilities. Users can be assigned various roles like Owner, Delegate, Contributor, Guest, and Finder, each with specific rights, from full project management to read-only access. Roles can be inherited from parent categories and can be adjusted to the needs of the current project. Owners and Delegates have the ability to add, update, or remove members and roles. Members are added through a user search function, and changes in membership are recorded in the project's timeline. For users not registered in SODAR, invitations can be sent via email, which expire after a set duration. The system allows for the promotion of members with inherited roles, but not demotion. Each project must have one local owner, and the number of contributors and guests is unrestricted.

Detailed information are detailed on [SODAR manual](https://sodar-server.readthedocs.io/en/latest/ui_project_members.html).

#### Landing Zones:

Landing zones in SODAR serve as temporary, user-specific areas within iRODS for file uploads, providing full write access to the user. Files are uploaded to these landing zones, after which SODAR performs validation and transfers them to a permanent, read-only sample data repository. The Landing Zones application facilitates the management of these uploads, accessible through the project sidebar or the SODAR home page. Should validation or upload fail, the process is reversed to allow corrections, ensuring the integrity of data in the repository.

#### Sample sheets:

In SODAR, sample sheets represent the metadata for study design within research projects. The Sample Sheets application is used for importing, browsing, and editing this metadata, and it allows users to access related files stored in the iRODS system. Access to the Sample Sheets app is obtained through the project sidebar or via an icon on the SODAR home page.

#### Time line:

The Timeline application in SODAR serves as a log that tracks project activities, such as member role assignments, file transfers from landing zones, updates to sample sheets or errors. Each recorded event on the timeline includes a timestamp, the type and origin of the event, the user who initiated it, and a detailed description with links to related objects and applications.

#### REST-API

The SODAR server contains REST-API that allow the automation of various process by server admins.

### SODAR data workflow step-by-step usage

![](fig/clipboard-3042118772.png){width="847"} Figure 4. SODAR data workflow.

1.  Login into SODAR. Then create a project <https://sodar.crc1550.com/project/project/create>.

2.  Create a subproject [https://sodar.crc1550.com/project/project/create/](https://sodar.crc1550.com/project/project/create/f2688cf8-67f2-450d-ae69-97d5fda66faf){.uri}\<project_uid\>.

3.  Create a sample sheet: Sample sheets \> Sheet operations \> Create from template and `Select ISA-Tab Template`.

4.  Activate the irods server on Sample Sheet section.

5.  Files will be uploaded by the data management team. These are the options:

    1.  Use \<[cubi-tk](https://github.com/bihealth/cubi-tk) [sodar ingest](https://github.com/bihealth/cubi-tk/blob/0f7f5b2d46d0f955eb70faf8741cc44033fe63ce/docs_manual/man_sodar_ingest.rst#L4)\> cubi-tk sodar ingest --sodar-url <url> --sodar-api-token <api_token> <file> <landing_zone_uid>

    2.  Use iRODs \<[iput](https://docs.irods.org/master/icommands/user/#iput)\>

6.  Call SODAR validation to check whether the data upload was successful.

7.  Modify or fix any entries, if required.

### Creating and filling a sample sheet

1.  Pick `Sample Sheets` on left column.
2.  On Sheet operation, select create from template

![](images/clipboard-1391538419.png)

3.  Select an ISA-Tab template

![](images/clipboard-2875853019.png)

4.  Fill the form:

![](images/clipboard-934212931.png)

::: callout
#### Note

The current templates are not fully optimized for our use-case. Fell free to reach out to the data management team if you have question, concerns or suggestions.
:::

#### Standard Operating Procedure for Data and Metadata Registry with SODAR Service

The SOP is available here: <https://cloud.crc1550.com/index.php/s/nW6CGRiDHPtP5KP>

## References

1\. [Documentation on SODAR data transfer](https://sodar-server.readthedocs.io/en/latest/data_transfer_irods.html)

2\. [Current approach used for data transfer](https://gist.github.com/tbrittoborges/5a7ee1e3b59be89ddd66aa90c80583fd)

1.  [SODAR overview](https://www.youtube.com/watch?v=LQ8foUpjnqs)

## 

# FAQ and practical notes:

## How to access iRODS:

iRODS directories can be accessed . <https://sodar-server.readthedocs.io/en/latest/data_transfer_irods.html>

### Why \<cubi-tk sodar ingest-fasq\> is not working?

The cubi-tk is a command line tool that allows to interact with SODAR server. The command `cubi-tk sodar ingest-fasq` because of configuration error. Use \<cubi-tk sodar ingest\>. See implementation details on [cubi-tk](https://github.com/bihealth/cubi-tk/blob/0f7f5b2d46d0f955eb70faf8741cc44033fe63ce/cubi_tk/sodar/ingest.py).

::: keypoints
-   SODAR is a user friendly data management solution that adheres to the FAIR framework.
:::
