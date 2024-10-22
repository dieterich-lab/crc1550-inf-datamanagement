---
title: ' Data Management Plan'
teaching: 0
exercises: 0
---

:::::::::::::::::::::::::::::::::::::: questions 

- None

::::::::::::::::::::::::::::::::::::::::::::::::


::: objectives
-   Establishing a data management strategy within the CRC.
-   Detailing roles and responsibilities for data management.
:::

## Overview

This Data Management Plan outlines the strategies and procedures for managing high-throughput data within the CRC1550's integrated infrastructure. The CRC-INF plan is centered on the consolidation of interfaces, procedures, and interoperability standards (Aim 1) and the development of generic bioinformatics workflows for the standard analysis of multimodal data sets from CRC projects (Aim 2). The primary objective of the data management team is to ensure the efficient management of unprocessed and processed data produced by high-throughput experiments by providing services (and interfaces) to manage and store data and metadata.

![](https://lh7-us.googleusercontent.com/HIZrk0S_WDLJXpKYFcl6BfZY5or_grINIHr6JNW_5mZmpb3xLxy6_aQEcPiEAmGwL_pS6LpaJ9aPpHUEbDZ-DSDUpPtE_cciZNdvwZGSsqYUJ9br8Bzr_bacQ2UdG1-WFKlsMBUu9LBpergxc4EtppU)

The data generated in high-throughput experiments can be categorized into two main types:

**Unprocessed (or raw) data** refers to the unprocessed data directly obtained from high-throughput experiments. This includes the output from sequencing machines. The data management team will establish protocols for the collection, storage, and initial processing of raw data to ensure its integrity and reliability. There is a general rule of thumb for 

**Processed data** represents the results obtained after applying various bioinformatics and statistical analysis techniques to the raw data. This includes sequences filtered by quality, identified genetic variants, and derived annotations, such as genes called differentially expressed. The data management team will work closely with the bioinformatics team to establish workflows and standardize processing methods to ensure consistent and reproducible results.

### **Roles and responsibilities**

The data owner and data manager must work together to ensure data flow, documentation, and data management best practices throughout the project. To keep high-throughput data secure, accessible, and usable, these roles must communicate regularly.

\
\

**Data Owner**:

\

-   High-throughput experiment data transfer: The data owner transfers primary data from high-throughput experiments to the data management team. This includes organizing and documenting data.

-   Access control change communication: The data owner should notify the infrastructure management team of access control changes. This ensures project-compliant access permissions.

-   In case of record update: The data owner must keep data and metadata up-to-date. Throughout the project lifecycle, document data and metadata changes. Data integrity and completeness should be ensured by the data owner and manager.

\

**Data Manager:**

\

-   Validates high-throughput data and metadata, this involves checking the data owner's metadata for MINSEQE and ISA compliance, inconsistencies, and missing information.

-   Storage and Backup. The data manager stores and backs up raw data, processed data, and metadata. To preserve data and recover from disasters, this requires proper storage systems, data organization, and regular backups.

-   Maintain a healthy data management system. This includes system monitoring, troubleshooting, and updating software and security patches.

-   The data manager transfers data and metadata from the data management system to bioinformatics teams or other stakeholders. This may involve exporting data in required formats, ensuring data integrity during transfer, and working with bioinformatics teams to meet their needs.

## Managing metadata 

To enable the unambiguous interpretation and facilitate the reproducibility of experiment results, we will adopt the Minimum Information about a high-throughput nucleotide SEQuencing Experiment (**MINSEQE**) guidelines. These guidelines provide a framework for capturing essential metadata associated with high-throughput experiments and are the recommended community standard. Similar to the MIAME guidelines for microarray experiments, MINSEQE will be followed to ensure comprehensive metadata collection and consists of the following items:

-   metadata

-   sequence read data

-   final processed data 

-   experimental protocols

\

**ISA framework**: this framework aims to simplify 

-   **I**nvestigation: the project context

-   **S**tudy: a unit of research

-   **A**ssay: analytical measurement

\

**Data Portal**

Task: provide granularity access control to certain data. Initially, data is available only to data owners. After authorization, data should be made internally and openly accessible. 

\

**Making metadata interoperable**

Task: To enhance the interoperability of metadata, the data management team will utilize standardized metadata formats, such as XML or JSON, and adopt controlled vocabularies and ontologies where applicable. This will enable efficient data discovery, integration, and sharing across different projects and platforms.

\
\

**Data security and backup**

Task**:** we will establish protocols for data security and backup to ensure that data is protected against loss or corruption. The protocols will include measures for data backup.

\

**Ethical aspect**

Currently, we only store data obtained from animal samples for genetic and disease modeling. Therefore, there are no ethical or legal issues that can affect data sharing, assuming a vote on animal ethics has been obtained by the data provider.

\

**Costs**

The data management team will allocate appropriate resources, including storage infrastructure, computational power, and personnel, to support the storage and metadata processing. Regular assessments will be conducted to ensure the scalability and sustainability of the infrastructure and its services.

\

**OpenBis**

To fulfill these tasks, we are using the Biological Information System (OpenBIS), a flexible and extensible data management system that can be utilized to accomplish several aspects of your Data Management Plan. Here's how OpenBIS can be used to support the different sections:

OpenBIS includes a web-based interface that can serve as a data portal. It allows authorized users to search, browse, and access data and metadata stored in the system. As a metadata management system, it provided a structured metadata model. We are working to define metadata templates based on the MINSEQE guidelines and the ISA framework within OpenBIS. This ensures that the required metadata fields are captured for each experiment, study, and assay. In addition, metadata quality checklist should be implemented 

The data portal can be customized to provide specific functionalities for data visualization and analysis, enabling users to perform basic data exploration tasks.

The portal supports access control mechanisms, allowing us to define user roles and permissions. We can configure access restrictions to ensure that consortium members have the appropriate level of access to data and metadata within the system. OpenBIS enables collaboration by providing controlled sharing and collaboration features among authorized users. In addition, OpenBIS can integrate with public repositories that work as  external data sharing platforms, such as Zenodo, that generate persistent identifiers (e.g., DOI) for datasets, facilitating easy referencing and citation.

OpenBIS includes built-in security features to protect data integrity and confidentiality. It supports user authentication and authorization, data encryption, and audit trails to track system activities. Additionally, OpenBIS can be integrated with backup systems to ensure regular data backups and disaster recovery.

:::::: keypoints
 - TODO
::::::
