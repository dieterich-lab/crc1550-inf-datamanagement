---
title: 'SRA'
teaching: 10
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- What is SRA and how to use it for data deposition?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Get to know the SRA database
- Understand the requiriments for data deposition

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

The Sequence Read Archive is a public repository that contains high-throughput sequencing data. It is a part of the International Nucleotide Sequence Database Collaboration (INSDC), which includes several institutes.  Data from all life forms is included in the repository, as well as metagenomics and ecological studies. SRA stores raw sequencing data and alignment. We use the SRA to deposit, which is usually mandatory as part of a paper publication. 

It aims to establish a central repository for next-generation sequencing data, linking to resources that reference or utilize this data. The repository allows in tracking project metadata for studies and experiments. There's a focus on facilitating flexible submission and retrieval of ancillary data providing  normalized data structures. Additionally, the objectives include decoupling the submission process from content and laying the groundwork for interactive user submissions and data retrieval.

## SRA concepts:

SRA metadata concept separates experimental data from its metadata, organizing the latter into a structured hierarchy:

— Study: Represents a collection of experiments aimed towards a common goal, serving as an overarching project that encapsulates the purpose and scope of the research conducted.
— Experiment: Refers to a specific set of laboratory procedures applied to input material, designed to achieve an anticipated result. Each experiment is a component of a study, contributing to its overall objective. Can also be interpreted as a series of experimental protocols.
— Sample: The focus of an experiment, which can be a single sample or multiple samples grouped together. The results of an experiment are articulated based on these samples, detailing the outcomes for individual samples or their collective as defined by the experimental setup. Sample are not equal a individuals, as one individual can provide multiple samples (i,e, right and left ventricle).
— Run: Denotes the actual outcomes or results of the experiment. These runs encompass the data collected from a sample or a group of samples linked to a specific experiment. Or simply the the output of the research process.
— Submission: A submission encompasses a bundle of metadata and data objects, coupled with instructions on how the submission should be handled. This package facilitates the organized and controlled entry of both experimental data and its corresponding metadata into the repository, ensuring that the data can be accurately classified, accessed, and utilized.

Understanding these concepts and the structure of the organization is important for providing detailed yet direct metadata on data on the various steps involved in generating a data set.

## Accessing the SRA

The SRA database can be accessed through the [NCBI website](https://www.ncbi.nlm.nih.gov/sra).

Although discussing data access is outside the scope of this material, it is important to note that data access is a key aspect of the FAIR principles. This means that with the right metadata, data can be reused, generating more follow-up studies and citations.

Significant to note that not all data on the SRA is public, some data is private and only accessible to the submitter. Data can also be embargoed for a certain period of time. Recently, SRA started to use placeholder as a way to keep track of data produced by large cohort and require controlled access.

## Data deposition

There multiple ways to deposit data on the SRA, the most common is through the submission portal. This approach is detailed [here](https://www.ncbi.nlm.nih.gov/sra/docs/submitportal/). At the CRC, we plan to streamline this process using a programmatic approach for data submission, as detailed [here](https://cloud.crc1550.com/index.php/s/NYkwKpMbHP3GTBn).

::::::::::::::::::::::::::::::::::::: keypoints 

- Comprehensive Repository: The SRA serves as a comprehensive public repository for high-throughput sequencing data across all life forms, supporting a wide range of genomic research by providing access to raw sequencing data and alignments.

- Structured Metadata Organization: The organization of SRA metadata into a structured hierarchy—comprising Studies, Experiments, Samples, Runs, and Submissions—facilitates precise and efficient data deposition, retrieval, and analysis, underscoring the importance of detailed metadata in the scientific research process.

- Access and Deposition Flexibility: While access to the SRA database is facilitated through the NCBI website, the database also highlights the principles of controlled access and privacy for certain data sets, alongside offering multiple pathways for data deposition to accommodate the needs of diverse research projects and goals.

::::::::::::::::::::::::::::::::::::::::::::::::

