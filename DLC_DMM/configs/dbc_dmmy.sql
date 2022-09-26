--datalake.test_MTL_CSV_NONPTN_1
Drop table if exists datalake.test_MTL_CSV_NONPTN_1;
CREATE EXTERNAL TABLE datalake.test_MTL_CSV_NONPTN_1 (   pos_mo STRING,   lpm_cst_id DECIMAL(10,0),   ar_id STRING,   npl_strt_yr_mo INT,   ppn_tms TIMESTAMP,   src_stm_id SMALLINT )
USING PARQUET 
LOCATION 's3://08017-vietnamdatahub-datalake-nonprod/vn_datahub/datalake/test_MTL_CSV_NONPTN_1';

--datalake.test_MTL_CSV_PTN_1
Drop table if exists datalake.test_MTL_CSV_PTN_1;
CREATE EXTERNAL TABLE datalake.test_MTL_CSV_PTN_1 (   pos_dt TIMESTAMP,   txn_id BIGINT,   fee_amt1 STRING,   fee_amt2 STRING,   exec_tms TIMESTAMP,   ppn_tms TIMESTAMP,   src_stm_id SMALLINT ) 
USING PARQUET PARTITIONED BY (   ptn_yyyy STRING,    ptn_qtr STRING )
LOCATION 's3://08017-vietnamdatahub-datalake-nonprod/vn_datahub/datalake/test_MTL_CSV_PTN_1';
MSCK REPAIR TABLE datalake.test_MTL_CSV_PTN_1;


--datalake.test_MTL_CSV_NONPTN_2
Drop table if exists datalake.test_MTL_CSV_NONPTN_2;
CREATE EXTERNAL TABLE datalake.test_MTL_CSV_NONPTN_2 (   pos_dt TIMESTAMP,   clss_rsn_cd STRING,   clss_rsn_dsc1 STRING,   clss_rsn_dsc2 STRING,   clss_rsn_dsc3 STRING,   clss_rsn_dsc4 STRING,   clss_rsn_dsc5 STRING,   clss_rsn_dsc6 STRING,   clss_rsn_dsc7 STRING,   clss_rsn_dsc8 STRING,   clss_rsn_dsc9 STRING,   clss_rsn_dsc10 STRING,   clss_fm_cd SMALLINT,   clss_tp_cd SMALLINT,   clss_lvl_cd SMALLINT,   ncb_clss_tp_cd SMALLINT,   ppn_tms TIMESTAMP,   src_stm_id STRING )
USING PARQUET 
LOCATION 's3://08017-vietnamdatahub-datalake-nonprod/vn_datahub/datalake/test_MTL_CSV_NONPTN_2';

--datalake.test_MTL_CSV_PTN_2
Drop table if exists datalake.test_MTL_CSV_PTN_2;
CREATE EXTERNAL TABLE datalake.test_MTL_CSV_PTN_2 (   pos_dt TIMESTAMP,   txn_id BIGINT,   fee_amt1 STRING,   fee_amt2 STRING,   exec_tms TIMESTAMP,   ppn_tms TIMESTAMP,   src_stm_id SMALLINT ) 
USING PARQUET PARTITIONED BY (   ptn_yyyy STRING,    ptn_qtr STRING )
LOCATION 's3://08017-vietnamdatahub-datalake-nonprod/vn_datahub/datalake/test_MTL_CSV_PTN_2';
MSCK REPAIR TABLE datalake.test_MTL_CSV_PTN_2;

