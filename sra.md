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
- Understand the requirements for data deposition
- Learn required optional field used for a RNA-sequencing experiment

::::::::::::::::::::::::::::::::::::::::::::::::

## Introduction

The Sequence Read Archive (SRA) is a public repository that contains high-throughput sequencing data. It is a part of the International Nucleotide Sequence Database Collaboration (INSDC), which includes several major institutes: the National Center for Biotechnology Information (NCBI) in the USA, the European Bioinformatics Institute (EBI) in Europe, and the DNA Data Bank of Japan (DDBJ) in Japan. The SRA includes data from all life forms, as well as metagenomics and ecological studies. The SRA stores raw sequencing data and sometimes the processed alignment data. Researchers often use the SRA to deposit their data, which is typically a requirement for the publication of research papers.
It aims to establish a central repository for next-generation sequencing data, linking to resources that reference or utilize this data. The repository allows in tracking project metadata for studies and experiments. There's a focus on facilitating flexible submission and retrieval of ancillary data, providing  normalized data structures. Additionally, the objectives include decoupling the submission process from content and laying the groundwork for interactive user submissions and data retrieval.

## SRA concepts:

SRA metadata concept separates experimental data from its metadata, organizing the latter into a structured hierarchy:

- **Study**: Represents a collection of experiments aimed at achieving a common goal, serving as an overarching project that encapsulates the purpose and scope of the research conducted. A study provides the context and rationale for the experiments.

- **Experiment**: Refers to a specific set of laboratory procedures applied to input material, designed to achieve an anticipated result. Each experiment is a component of a study, contributing to its overall objective. It can also be interpreted as a series of experimental protocols or assays conducted to test a hypothesis or gather data.

- **Sample**: The focus of an experiment, which can be a single sample or multiple samples grouped together. The results of an experiment are articulated based on these samples, detailing the outcomes for individual samples or their collective group as defined by the experimental setup. A sample is not equivalent to an individual, as one individual can provide multiple samples (e.g., right and left ventricle tissue samples).

- **Run**: Denotes the actual outcomes or results of the experiment. These runs encompass the data collected from a sample or a group of samples linked to a specific experiment. Essentially, a run is the execution of the sequencing or analytical process that generates data.

- **Submission**: A submission encompasses a bundle of metadata and data objects, coupled with instructions on how the submission should be handled. This package facilitates the organized and controlled entry of both experimental data and its corresponding metadata into the repository, ensuring that the data can be accurately classified, accessed, and utilized.

## Accessing the SRA

The SRA database can be accessed through the [NCBI website](https://www.ncbi.nlm.nih.gov/sra).

Although discussing data access is outside the scope of this material, it is important to note that data access is a key aspect of the FAIR principles. This means that with the right metadata, data can be reused, generating more follow-up studies and citations.

Significant to note that not all data on the SRA is public, some data is private and only accessible to authorized users. Data can also be embargoed for a certain period of time. Recently, SRA started to use placeholder as a way to keep track of data produced by large cohort and require controlled access.

## Data deposition

There are multiple ways to deposit data on the SRA, the most common is through the submission portal. This approach is detailed [here](https://www.ncbi.nlm.nih.gov/sra/docs/submitportal/). At the CRC, we plan to streamline this process using a programmatic approach for data submission, as detailed in this [SOP](https://cloud.crc1550.com/index.php/s/NYkwKpMbHP3GTBn). We plan to automatize this process in the future.


## Metadata for a transcriptomics experiment

As you can realize, there are differences between the ISA framework and SRA. To enable the unambiguous interpretation and adhere to the FAIR framework, we take some pragmatic rules to define and create the Investigation, Study, and Assay files. The following table shows the required and recommended fields for an RNA-sequencing experiment, and can be easily adapted to other types of experiments.

### Investigation metadata

| Metadata Field                     | Required?    | Definition                                                                                                    | Comment                                                                                                     |
|------------------------------------|--------------|---------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| Identifier           | required     | Unique identifier for the investigation                                                                      |                                                                                                             |
| Title                | required     | Title of the investigation                                                                                    |                                                                                                             |
| Description          | required     | Brief description of the investigation                                                                        |                                                                                                             |
| Submission Date      | required     | Date the investigation was submitted                                                                          | Standardized date format                                                                                     |
| Public Release Date  | required     | Date the investigation was publicly released                                                                  | Standardized date format                                                                                     |
| Contacts             | required     | List of contacts associated with the investigation                                                            | Names, affiliations, roles, and contact details                                                             |
| Study Design Types   | recommended  | Types of study designs                                                                                        |                                                                                                             |

### Sample metadata[^1]

| Metadata Field               | Required?     | Definition                                                                                                           | Comment                                                                                                                                                                                  |
|------------------------------|---------------|----------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unique ID                    | required      | Identifier for a sample that is at least unique within the project                                                   |                                                                                                                                                                                          |
| sample type                  | required      | The type of the collected specimen, e.g., tissue biopsy, blood draw, or throat swab                                  | Ontology field - e.g., OBI or EFO                                                                                                                                                        |
| species                      | required      | The primary species of the specimen, preferably the taxonomic identifier                                             | Ontology field - NCBITaxonomy              |
| tissue/organism part         | required      | The tissue from which the sample was taken                                                                           | Ontology field - e.g., Uberon                                                                                                                                                             |
| disease                      | required      | Any diseases that may affect the sample                                                                              | This may not necessarily be the same as the host’s disease, e.g., healthy brain tissue might be collected from a host with type II diabetes while cirrhotic liver tissue might be collected from an otherwise healthy individual. Ontology field - e.g., MONDO or DO |
| sex                          | required      | The biological/genetic sex of the sample                                                                             | Ontology field - e.g., PATO                                                                                                                                                               |
| development stage            | required      | The developmental stage of the sample                                                                                | Ontology field - e.g., Uberon or Hsadpdv; species dependent                                                                                                                               |
| collection date              | required      | The date on which the sample was collected, in a standardized format                                                 | Collection date in combination with other fields such as location and disease may be sufficient to de-anonymize a sample                                                                  |
| external accessions          | recommended   | Accession numbers from any external resources to which the sample was submitted                                      | e.g., Biosamples, Biostudies                                                                                                                                                             |
| ancestry/ethnicity           | recommended   | Ancestry or ethnic group of the individual from which the sample was collected                                       | Ontology field - e.g., HANCESTRO                                                                                                                                                          |
| age                          | recommended   | Age of the organism from which the sample was collected                                                              |                                                                                                                                                                                          |
| age unit                     | recommended   | Unit of the value of the age field                                                                                   | Ontology field - e.g., UO                                                                                                                                                                 |
| BMI                          | recommended   | Body mass index of the individual from which the sample was collected                                                | Only applies to human samples                                                                                                                                                            |
| treatment category           | recommended   | Treatments that the sample might have undergone after collection                                                     | Ontology field - e.g., OBI, NCIt, or OGMS                                                                                                                                                 |
| cell type                    | recommended   | The cell type(s) known or selected to be present in the sample                                                       | Ontology field - e.g., CL                                                                                                                                                                 |
| growth conditions            | recommended   | Features relating to the growth and/or maintenance of the sample                                                     |                                                                                                                                                                                          |
| genetic variation            | recommended   | Any relevant genetic differences from the specimen or sample to the expected genomic information for this species, e.g., abnormal chromosome counts, major translocations, or indels |                                                                                                                                                                                          |
| sample collection technique  | recommended   | The technique used to collect the specimen, e.g., blood draw or surgical resection                                   | Ontology field - e.g., EFO or OBI                                                                                                                                                         |
| phenotype                    | recommended   | Any relevant (usually abnormal) phenotypes of the specimen or sample                                                 | Ontology field - e.g., HP or MP; species dependent                                                                                                                                        |
| cell cycle                   | recommended   | The cell cycle phase of the sample (for synchronized growing cells or a single-cell sample), if known                | Ontology field - e.g., GO                                                                                                                                                                 |
| cell location                | recommended   | The cell location from which genetic material was collected (usually either nucleus or mitochondria)                 | Ontology field - e.g., GO                                                                                                                                                                 |


### Assay metadata

| Metadata Field                     | Required?   | Definition                                                                                                    | Comment                                                                                                     |
|------------------------------------|-------------|---------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| Identifier                   | required    | Unique identifier for the assay                                                                               |                                                                                                             |
| File Name                    | required    | Name of the file that contains the assay data                                                                 |                                                                                                             |
| Measurement Type             | required    | Type of measurement performed in the assay                                                                    | Ontology field - e.g. OBI                                                                                   |
| Technology Type              | required    | Type of technology used in the assay                                                                          | Ontology field - e.g. OBI                                                                                   |
| Technology Platform          | recommended | Specific platform or instrument used in the assay                                                             |                                                                                                             |
| Performer                    | required    | Person or organization that performed the assay                                                               | Names, affiliations, roles, and contact details                                                             |
| Date                         | recommended | Date the assay was performed                                                                                  | Standardized date format                                                                                    |
| Parameter Values             | recommended | Parameters and their values used in the assay                                                                 | Names, types, descriptions, and values                                                                      |
| Sample Name                  | required    | Name of the sample used in the assay                                                                          |                                                                                                             |
| Raw Data File                | recommended | File name of the raw data generated by the assay                                                              |                                                                                                             |
| Processed Data File          | recommended | File name of the processed data generated by the assay                                                        |                                                                                                             |
| Data Transformation Protocol | recommended | Protocol used for data transformation                                                                         | Protocol names, descriptions, URIs, and versions                                                            |
| Normalization Protocol       | recommended | Protocol used for data normalization                                                                          | Protocol names, descriptions, URIs, and versions                                                            |
| Quality Control Protocol     | recommended | Protocol used for quality control                                                                             | Protocol names, descriptions, URIs, and versions                                                            |
| Data File                    | required    | File name of the data file generated by the assay                                                             |                                                                                                             |
| Data Format                  | required    | Format of the data file generated by the assay                                                                |                                                                                                             |
| Data URI                     | recommended | URI of the data file generated by the assay                                                                   |                                                                                                             |
| Protocol Parameters          | recommended | Parameters used in each protocol                                                                              | Names, types, descriptions, and values                                                                      |
| Protocol Components          | recommended | Components used in each protocol                                                                              | Component names, types, descriptions, and URIs                                                              |
| Protocol Performance Comments | optional  | Comments on the performance of each protocol                                                                  |                                                                                                             |
| Data Types                   | recommended | Types of data generated from the assay                                                                        |                                                                                                             |
| Data Description             | optional    | Description of the data generated from the assay                                                              |                                                                                                             |
| Experimental Design Type     | recommended | Type of experimental design used in the assay                                                                 |                                                                                                             |
| Experimental Design Description | optional | Description of the experimental design used in the assay                                                      |                                                                                                             |
| Replication                  | optional    | Information about the replication of the assay                                                                |                                                                                                             |
| Factor Values                | recommended | Experimental factors and their values specific to the assay                                                   |                                                                                                             |

::::::::::::::::::::::::::::::::::::: keypoints 

- Comprehensive Repository: The SRA serves as a comprehensive public repository for high-throughput sequencing data across all life forms, supporting a wide range of genomic research by providing access to raw sequencing data and alignments.

- Structured Metadata Organization: The organization of SRA metadata into a structured hierarchy—comprising Studies, Experiments, Samples, Runs, and Submissions—facilitates precise and efficient data deposition, retrieval, and analysis, underscoring the importance of detailed metadata in the scientific research process.

- Access and Deposition Flexibility: While access to the SRA database is facilitated through the NCBI website, the database also highlights the principles of controlled access and privacy for certain data sets, alongside offering multiple pathways for data deposition to accommodate the needs of diverse research projects and goals.

::::::::::::::::::::::::::::::::::::::::::::::::

[^1]: Based on [The faircookbook](https://faircookbook.elixir-europe.org/content/recipes/interoperability/transcriptomics-metadata.html#suggested-metadata-fields)
