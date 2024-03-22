---
title: ' Primer in Bioinformatics'
teaching: 0
exercises: 0
output: pdf_document
---

:::::::::::::::::::::::::::::::::::::: questions 

- None.

::::::::::::::::::::::::::::::::::::::::::::::::

::: objectives
-  Introduce the idea of OMICs and explain why they are important in bioinformatics.
-  Familiarize with commonly used file formats
-  Understanding the multilayered nature of metadata from OMICs experiments.
:::

**Introduction**: OMICs technologies provide unbiased measurements of molecular entities in biological samples. These measurements allow for a comprehensive exploration of functions and association of such entities. The extensive utilization of OMICs techniques resulted in the establishment of system biology, a branch of biology that aims to comprehend biological systems in their entirety.

**OMICs** is a collective term for a group of technologies that allow for the comprehensive analysis of biological molecules. These technologies include genomics, transcriptomics, proteomics, metabolomics, and lipidomics. Each of these technologies provides a unique perspective on the molecular composition of a biological sample, and together they allow for a comprehensive exploration of the functions and associations of biological molecules.

## General definition

-   **Genomics**: Study of an organism's entire genome, exome or selected regions, offering insights into genetic variations. When associated with disease phenotype or clinical data can be implicated on health and disease.
-   **Transcriptomics**: Focuses on the transcriptome, the complete set of RNA transcripts produced by the genome, under specific circumstances or in a specific cell.
-   **Proteomics**: Examines the proteome, the entire set of proteins produced or modified by an organism, revealing functions and pathways.
-   **Metabolomics**: Involves the study of metabolites, providing a snapshot of the physiological condition of a cell or organism.
-   **Lipidomics**: A complete lipid profile within a cell, tissue, or organism, allowing the study of their roles in cellular processes.

## File formats

There are a multitude of file formats used in bioinformatics, each with its own specific use case. Some of the most commonly used file formats include:

**FASTQ format** is a text-based format for storing both an oligonucleotide sequence and its corresponding quality scores. Obtained after base calling.

**SAM/BAM/CRAM files**: These are used to store sequence alignment data, and are used to represent the alignment of reads to a reference genome. SAM is a text-based format, while BAM is a binary version of the same format. CRAM is a compressed version of the BAM format.

**PRIDE XML, mzIdentML, mzTab, and mzML**: These file formats are used to store, process, and visualize mass spectrometry-based proteomics data deposited in the PRIDE Archive. PRIDE XML is the internal data format and submission format of PRIDE, while mzIdentML and mzTab are standard file formats for reporting peptide/protein identification and quantification results. Additionally, mzML is used to store the raw output files from mass spectrometers. Note that there are many different file formats for raw proteomics datasets, depending on the equipment vendor.

**Raw sequencing formats:** high-throughput machine such as Illumina, Nanopore, produce files before base calling. These files are in the form of binary files, and are not human-readable and depend on vendor-specific methods for signal processing.

::: hint
For bioinformatics workflow, the FASTQ format is often the initial step. This file format stores "reads", or  nucleotide sequences, along with their quality scores. Each sequence in a FASTQ file is represented by four lines: a header with a '\@' symbol followed by an identifier and optional description, the nucleotide sequence itself, a separator line starting with a '+', and the quality scores encoded as ASCII characters. This structure allows for efficient storage and analysis of sequencing data, essential for tasks like genome assembly and analysis. For more detailed information, please visit the Wikipedia page on [FASTQ format](https://en.wikipedia.org/wiki/FASTQ_format).
:::

It is out of the scope of this lesson to detail all file formats used in bioinformatics, but it is important to understand that the different files a specific purpose, can be vendor-specific and that the choice of file format can have a significant impact on the downstream analysis of the data. For example, use of legacy vendor-specific format can limit the use of the data in modern bioinformatics pipelines, as proprietary programs may disappear. In general, it's good practice to use open-source file formats.

## Challenges in OMICs data:

There are many challenges involved in the use of OMICs datasets. 

-   **Data storage**: OMICs datasets can be large, and require robust data storage and backup solutions. This is especially true for raw sequencing data, which can be many gigabytes in size. We expect the size of OMICs datasets to predict by the CRC to be in the order of 20 terabytes per year.
- **Data analysis**: OMICs datasets are complex, and require specialized methods for analysis. 
- **Standardization**: As there are many different file formats, there are many data standards and protocols used in OMICs research. This lack of standardization make it difficult to compare data between different labs.
- **Ethical considerations**: Handling of personal OMICs data requires careful consideration of ethical and legal issues, such as patient privacy and data sharing. 
- **Data sharing**: OMICs datasets are required to be shared upon publication. 

All the challenges can be mitigated through metadata use. Metadata is data that provides information about other data, or in other words, a detailed description of the data's attribute. For example, for the data sharing challenge mentioned above, metadata can be used to find and filter datasets. This use-case is also interesting from the method development standpoint, as new methods can be used to analyze old data, but only if the data was properly described in terms of provenance and metadata. Metadata is essential for understanding the context of the data, and is used to help find and interpret the data. In the context of OMICs data, metadata can include information about the sample donor, sample, the experimental conditions, the data collection methods, protocols  and the data analysis methods. Metadata is essential for reproducibility, as it allows others to understand and replicate the results of an experiment.

:::::: keypoints
 - OMICs technologies are crucial for a holistic understanding of biological systems.
 - Common file formats in bioinformatics serve specific purposes, facilitating data analysis and sharing.
 - Metadata plays a critical role in contextualizing and modeling OMICs data.
::::::
