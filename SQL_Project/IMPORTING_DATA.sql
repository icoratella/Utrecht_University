-- SET SQL_SAFE_UPDATES = 0; uncomment if you need to delete things
-- SET SQL_SAFE_UPDATES = 1; remember to re run this after the previous one

LOAD DATA LOCAL INFILE '/media/sf_final_assignment/data/Cell_common_cols.csv'
INTO TABLE Cell
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES

(@Cell_ID, @Donor, @Chemistry, @CellCycleFraction, @IsCycling, @Cell_Type) 

SET
    Cell_ID = @Cell_ID,
    Donor = NULLIF(@Donor, ''),
    Chemistry = NULLIF(@Chemistry, ''),
    CellCycleFraction = NULLIF(@CellCycleFraction, ''),
    IsCycling = NULLIF(@IsCycling, ''),
    Cell_Type = NULLIF(@Cell_Type, '');
    


LOAD DATA LOCAL INFILE '/media/sf_final_assignment/data/healthy_obs_subset_specific_columns.csv'
INTO TABLE HealthyCell
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES

(@Cell_ID, @Annotations, @Batch, @Stage, @Scanpy_Clusters, @Cytograph_Clusters) 

SET
    Cell_ID = @Cell_ID,
    Annotations = NULLIF(@Annotations, ''),
    Batch = NULLIF(@Batch, ''),
    Stage = NULLIF(@Stage, ''),
    Scanpy_Clusters = NULLIF(@Scanpy_Clusters, ''),
    Cytograph_Clusters = NULLIF(@Cytograph_Clusters, '');
    
    


LOAD DATA LOCAL INFILE '/media/sf_final_assignment/data/tumor_no_predictions_subset_specific_columns.csv'
INTO TABLE TumorCell
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES

(@Cell_ID, @Clones, @Clusters, @Dissociation, @Sample, @SampleID, @Total_UMIs) 

SET
    Cell_ID = @Cell_ID,
    Clones = NULLIF(@Clones, ''),
    Clusters = NULLIF(@Clusters, ''),
    Dissociation = NULLIF(@Dissociation, ''),
    Sample = NULLIF(@Sample, ''),
    Sample_ID = NULLIF(@SampleID, ''), 
    Total_UMIs = NULLIF(@Total_UMIs, '');
    

    
LOAD DATA LOCAL INFILE '/media/sf_final_assignment/data/gene_all_cols.csv'
INTO TABLE Gene
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES

(@Gene_Name, @Chromosome, @End, @Start, @Strand, @Ensemble_ID, @Valid_Gene, @Selected, @GBM_Highly_Variable) 

SET
    Gene_Name = @Gene_Name,
    Ensemble_ID = NULLIF(@Ensemble_ID, ''),
    Chromosome = NULLIF(@Chromosome, ''),
    Start = NULLIF(@Start, ''),
    End = NULLIF(@End, ''),
    Strand = NULLIF(@Strand, ''), 
    Selected = NULLIF(@Selected, ''),
	Valid_Gene = NULLIF(@Valid_Gene, ''), 
    GBM_Highly_Variable = NULLIF(@GBM_Highly_Variable, '');
    
    
    
LOAD DATA LOCAL INFILE '/media/sf_final_assignment/data/healthy_expression_sparse_subset.csv'
INTO TABLE HealthyCell_GeneExpression
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES

(@Cell_ID, @Gene_Name, @Sparse_Raw_Counts) 

SET
    Cell_ID = @Cell_ID,
    Gene_Name = @Gene_Name,
    Sparse_Raw_Counts = NULLIF(@Sparse_Raw_Counts, '');
    


LOAD DATA LOCAL INFILE '/media/sf_final_assignment/data/tumor_fake_expression.csv'
INTO TABLE TumorCell_GeneExpression
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES

(@Cell_ID, @Gene_Name, @Sparse_Raw_Counts) 

SET
    Cell_ID = @Cell_ID,
    Gene_Name = @Gene_Name,
    Sparse_Raw_Counts = NULLIF(@Sparse_Raw_Counts, '');
    

LOAD DATA LOCAL INFILE '/media/sf_final_assignment/data/concat_pca_long.csv'
INTO TABLE PCA
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES

(@Cell_ID, @Cell_Type, @PC, @Coordinate) 

SET
Cell_ID = @Cell_ID,
Cell_Type = @Cell_Type,
PC = NULLIF(@PC, ''),
Coordinate = NULLIF(@Coordinate, '');

    
    
LOAD DATA LOCAL INFILE '/media/sf_final_assignment/data/concat_umap_long.csv'
INTO TABLE UMAP
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES

(@Cell_ID, @Cell_Type, @DIM, @Coordinate) 

SET
Cell_ID = @Cell_ID,
Cell_Type = NULLIF(@Cell_Type, ''),
DIM = NULLIF(@DIM, ''),
Coordinate = NULLIF(@Coordinate, '');


LOAD DATA LOCAL INFILE '/media/sf_final_assignment/data/markers_data_for_SQL.csv'
INTO TABLE Marker
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES

(@gene_name, @cell_type, @literature, @differential_expression_analysis) 

SET
    Gene_Name = @gene_name,
    Cell_Type = NULLIF(@cell_type, ''),
    Literature = NULLIF(@literature, ''),
    DEA = NULLIF(@differential_expression_analysis, '');
    
    

   
LOAD DATA LOCAL INFILE '/media/sf_final_assignment/data/tumor_predictions_subset.csv'
INTO TABLE Predictions
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES

(@Cell_ID, @GBmapPredicted, @predictions_RF, @max_probability_RF, @predictions_MD) 

SET
    Cell_ID = NULLIF(@Cell_ID, ''),
    GBmap = NULLIF(@GBmapPredicted, ''),
    Random_Forest = NULLIF(@predictions_RF, ''),
    RF_max_probability = NULLIF(@max_probability_RF, ''),
    Mahalanobis = NULLIF(@predictions_MD, '');





