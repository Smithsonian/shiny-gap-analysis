## About the Gap Analysis Tool

The GGI Gap Analysis Tool is a tool that was created by the [Smithsonian Institution Global Genome Initiative (GGI)](https://naturalhistory.si.edu/research/global-genome-initiative) to assess the status of taxonomic names in the [Global Genome Biodiversity Network (GGBN) Data Portal](http://data.ggbn.org/ggbn_portal/) and the [National Center for Biotechnology Information (NCBI) GenBank database](https://www.ncbi.nlm.nih.gov/genbank/).

## Cite This Tool

If you wish to cite this tool, you may use the following citation:

> Gonzalez, V.L. and A. Devine (2026): GGI Gap Analysis Tool Version 1.1.0. The Smithsonian Institution. Software. PENDING
> Devine, Amanda (2020): GGI Gap Analysis Tool. The Smithsonian Institution. Software. https://doi.org/10.25573/data.12818579

## References

The following data resources are used by this tool.

> GBIF Secretariat (2019). GBIF Backbone Taxonomy. Checklist dataset https://doi.org/10.15468/39omei accessed via GBIF.org on 2020-04-10.

> GGBN (Eds.) 2011+ (continuously updated). The GGBN Data Portal. GGBN Secretariat, NMNH, Washington D.C., USA. Compiled by GGBN Technical Management, BGBM, Berlin, Germany. Available at: http://data.ggbn.org [Accessed 2020-04-10]. -- Imprint

> Sayers E. A General Introduction to the E-utilities. In: Entrez Programming Utilities Help [Internet]. Bethesda (MD): National Center for Biotechnology Information (US); 2010-. Available from: https://www.ncbi.nlm.nih.gov/books/NBK25497/

## Instructions for Use

The **GGI Gap Analysis Tool** allows users to compare lists of higher-level taxonomic names against taxonomic and genetic-resource information from the **GBIF Backbone Taxonomy**, **Global Genome Biodiversity Network (GGBN)**, and **NCBI GenBank**. The tool can be used to identify taxonomic groups that are represented in, or potentially missing from, GGBN and NCBI GenBank.

### 1. Prepare Your Taxonomic Names

Prepare a list of taxonomic names that you would like to analyze.

The Gap Analysis Tool accepts names at the following taxonomic ranks:

- Kingdom
- Phylum/Division
- Class
- Order
- Family
- Genus

**Species-level names are not supported.**

Each taxonomic name should be entered on a separate line. For example:

```text
Aves
Mammalia
Actinopterygii
Amphibia
Reptilia
```

Names can either be uploaded from a text file or pasted directly into the application.

### 2. Enter or Upload Names

Navigate to the **Input** tab.

Under **Input Names**, choose one of the following methods.

#### Upload a text file

Select **Names file (.txt)** and upload a plain-text (`.txt`) file containing **one taxonomic name per line**.

Example:

```text
Felidae
Canidae
Ursidae
Mustelidae
```

#### Paste names directly

Alternatively, paste your taxonomic names into the **List of names** text box.

Enter **one name per row**.

If a file is uploaded, the uploaded file is used as the source of names for the analysis.

### 3. Specify the Taxonomic Rank

Under **Name Options**, use **Taxonomic rank of submitted names** to identify the rank represented by your input.

Available options are:

- Not Specified
- Kingdom
- Phylum/Division
- Class
- Order
- Family
- Genus

For example, if your input contains:

```text
Felidae
Canidae
Ursidae
```

select **Family**.

If your list contains names from multiple taxonomic ranks, leave this option as **Not Specified**.

Specifying the correct rank can help restrict the analysis to the intended taxonomic level.

### 4. Name the Analysis

Enter a descriptive name in the **Analysis name** field.

By default, the application uses the current date.

The analysis name is used when naming downloaded output files. Using a descriptive name can make downloaded analyses easier to identify later.

For example:

```text
Mammal_Families_2026
```

or

```text
GGI_Fish_Genera
```

### 5. Optional: Filter by GBIF Name Status

The **Name status** option can be used to restrict results according to the taxonomic status recorded in the GBIF Backbone Taxonomy.

Leave this option as **Not Specified** if you do not want to filter the results by name status.

For example, selecting an accepted-name status can be useful when you want the analysis restricted to names recognized as accepted in the GBIF taxonomy.

Because taxonomic names and classifications can change over time, the GBIF name status is useful when reviewing names that may be synonyms, outdated names, or otherwise not currently accepted.

### 6. Optional: Filter by Taxonomic Group

The **Filter by taxon** controls allow the analysis to be restricted to a particular higher taxonomic group.

First choose a rank using **Select filter rank**.

Available filter ranks include:

- Kingdom
- Phylum/Division
- Class
- Order
- Family

After selecting a rank, the **Select filter taxonomic name** menu will populate with names available for that rank.

For example, to restrict an analysis to mammals:

1. Select **Class** under **Select filter rank**.
2. Select **Mammalia** under **Select filter taxonomic name**.

Leave these options as **Not Specified** if you do not want to restrict the analysis to a particular taxonomic group.

### 7. Run the Gap Analysis

After entering the taxonomic names and selecting any desired options, click:

**Run Analysis**

The application will process the submitted names and automatically redirect you to the **Results Table** tab.

The submitted names are matched against the GBIF taxonomic data and then compared with taxonomic representation in GGBN and NCBI GenBank.

### 8. Review the Results Table

The **Results Table** provides detailed results for each submitted taxonomic name.

The table includes the following fields:

| Field | Description |
|---|---|
| **Submitted Name** | Taxonomic name supplied by the user. |
| **Rank** | Taxonomic rank associated with the matched name. |
| **Name Status** | Taxonomic status of the name in the GBIF Backbone Taxonomy. |
| **Accepted Name** | Accepted taxonomic name associated with the submitted name, when applicable. |
| **Queried Name** | Name ultimately used to compare against GGBN and GenBank. |
| **In GGBN** | Indicates whether the taxon is represented in the GGBN data used by the tool. |
| **In GenBank** | Indicates whether the taxon is represented in the GenBank data used by the tool. |
| **Kingdom** | GBIF kingdom classification. |
| **Phylum** | GBIF phylum/division classification. |
| **Class** | GBIF class classification. |
| **Order** | GBIF order classification. |
| **Family** | GBIF family classification. |
| **Genus** | GBIF genus classification. |

If a submitted name cannot be matched to the GBIF taxonomic data used by the application, its **Name Status** may appear as **NOT FOUND**.

The web interface displays only the **first 100 results**. If an analysis contains more than 100 results, use the **Download Results** tab to retrieve the complete results table.

### 9. Understand "In GGBN" and "In GenBank"

The **In GGBN** and **In GenBank** columns provide a quick indication of whether the queried taxon is represented in each resource.

Possible combinations include:

| In GGBN | In GenBank | Interpretation |
|---|---|---|
| Yes | Yes | Taxon is represented in both GGBN and GenBank. |
| Yes | No | Taxon is represented in GGBN but not GenBank. |
| No | Yes | Taxon is represented in GenBank but not GGBN. |
| No | No | Taxon is not represented in either dataset used by the Gap Analysis Tool. |

These comparisons can help identify potential gaps in genomic or genetic-resource representation.

A **No** should be interpreted as absence from the datasets currently being used by the application rather than definitive evidence that data for the taxon do not exist anywhere.

### 10. Review the Results Summary

Navigate to the **Results Summary** tab to view aggregate results by taxonomic rank.

The summary reports:

- **Total**
- **New to GGBN**
- **New to GenBank**
- **New to Both GGBN and GenBank**
- **Already in Both GGBN and GenBank**

#### Total

The total number of unique taxa evaluated at that taxonomic rank.

#### New to GGBN

Taxa that were not identified in the GGBN data used by the application.

These taxa may represent potential gaps in GGBN coverage.

#### New to GenBank

Taxa that were not identified in the GenBank data used by the application.

These taxa may represent potential gaps in GenBank coverage.

#### New to Both GGBN and GenBank

Taxa that were not identified in either the GGBN or GenBank datasets used by the application.

These taxa may represent particularly useful targets for further investigation, sampling, sequencing, or data mobilization.

#### Already in Both GGBN and GenBank

Taxa identified as represented in both GGBN and GenBank.

### 11. Download the Results

Navigate to the **Download Results** tab after running the analysis.

Three download options are available.

#### Download All Results (.xlsx)

Downloads an Excel workbook containing two worksheets:

- **summary** — the summarized gap-analysis results.
- **results** — the complete detailed results table.

This is generally the most convenient option for reviewing or sharing an entire analysis.

#### Download Summary Table (.tsv)

Downloads the summary results as a tab-delimited text (`.tsv`) file.

This file is useful for additional analysis in R, Python, Excel, or other data-analysis software.

#### Download Results Table (.tsv)

Downloads the complete detailed results table as a tab-delimited text (`.tsv`) file.

Unlike the web Results Table, which displays a maximum of 100 rows, the downloaded table contains the complete set of results generated by the analysis.

### 12. Interpreting Potential Gaps

The Gap Analysis Tool is intended to help identify **potential gaps in taxonomic representation**.

For example, a taxon reported as:

```text
In GGBN: No
In GenBank: No
```

may warrant further investigation because the taxon was not identified in either dataset used for the analysis.

Similarly:

```text
In GGBN: No
In GenBank: Yes
```

may indicate that sequence information is represented in GenBank while corresponding genetic-resource representation was not identified in GGBN.

Gap-analysis results should be interpreted in the context of the source data and their update dates. Database content, taxonomy, and taxonomic names change over time.

### 13. Check the Source Data Dates

The **Application Info and Source Data Files** tab displays information about the source datasets used by the application, including the dates associated with:

- GGBN genetic samples
- GenBank DNA barcodes
- GBIF taxonomic backbone

Consult these dates when interpreting or reporting results.

Because GGBN, GenBank, and GBIF are continuously updated resources, results from the Gap Analysis Tool represent the datasets available to the application rather than necessarily the current live contents of each external database.

### Recommended Workflow

For most analyses, the following workflow is recommended:

1. Prepare a list containing one taxonomic name per line.
2. Open the **Input** tab.
3. Upload the `.txt` file or paste the names into the text box.
4. Select the taxonomic rank of the submitted names when known.
5. Enter a descriptive **Analysis name**.
6. Apply a GBIF name-status or taxonomic filter if needed.
7. Click **Run Analysis**.
8. Review **Name Status** and **Accepted Name** to identify possible taxonomic-name issues.
9. Review **In GGBN** and **In GenBank** to identify potential representation gaps.
10. Open **Results Summary** to assess gaps across taxonomic ranks.
11. Download the complete Excel workbook or TSV files from **Download Results**.
12. Record the source-data dates when using the results in reports, publications, or subsequent analyses.

### Important Considerations

- The tool supports **kingdom through genus-level names; species names are not supported**.
- Input files must be plain-text files with **one taxonomic name per line**.
- Taxonomic matching depends on the GBIF taxonomic data used by the application.
- Synonyms or outdated taxonomic names may be associated with an accepted name during the analysis.
- A name reported as **NOT FOUND** should be reviewed for spelling, formatting, synonymy, or changes in taxonomy.
- A taxon reported as absent from GGBN or GenBank is absent from the **dataset used by this application** and should not automatically be interpreted as proof that no relevant record exists in the current external database.
- The on-screen Results Table displays a maximum of **100 rows**; download the results to obtain the complete table.
- Check the source-data dates before interpreting results, particularly when comparing analyses performed at different times.
