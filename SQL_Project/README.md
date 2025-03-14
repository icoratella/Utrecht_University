## Glioblastoma Cell Classification Database

This project translates the findings and data structure from my major research internship project, focused on classifying Glioblastoma Multiforme cells based on their resemblance to developmental brain cell types, into a structured relational database model. The original research involved single-cell RNA sequencing analysis using datasets from developing human brain cells and GBM tumor cells. Two classifiers—Random Forest and Mahalanobis Distance-based—were utilized to classify tumor cells based on healthy developmental references.

In this complementary database-oriented project, I designed and implemented a conceptual model using Entity-Relationship modeling techniques and translated this into a relational database using MySQL. My model organizes scRNA-seq data into structured tables to efficiently store cell metadata, gene expression levels, classifier predictions, and key marker genes, ensuring clear data relationships and integrity constraints. This exercise demonstrates my ability to conceptually understand complex biological data structures and practically implement them in SQL databases, enhancing data reproducibility, consistency, and memory efficiency for large-scale bioinformatics analysis.

Below is the final relational database schema that I designed and implemented:
![ue](https://github.com/icoratella/Utrecht_University/blob/main/SQL_Project/EER_diagram.png)

This repository includes conceptual and relational models, a Jupyter Notebook that demonstrates how to access and manipulate data directly from the database, and all the scripts used to transform the data for loading into MySQL.
