
-- bronze.crm_cust_info -- 

truncate table bronze.crm_cust_info

;

bulk insert bronze.crm_cust_info
from 'C:\Users\qcuon\Desktop\de-starter-pack\Resources\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
with 
	(
	firstrow = 2
	, fieldterminator = ','
	, tablock
	)

;
select count(*)
from bronze.crm_cust_info

;




-- bronze.crm_prd_info -- 

truncate table bronze.crm_prd_info

;

bulk insert bronze.crm_prd_info
from 'C:\Users\qcuon\Desktop\de-starter-pack\Resources\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
with 
	(
	firstrow = 2
	, fieldterminator = ','
	, tablock
	)

;
select count(*)
from bronze.crm_prd_info

;

-- bronze.crm_sales_details -- 

truncate table bronze.crm_sales_details

;

bulk insert bronze.crm_sales_details
from 'C:\Users\qcuon\Desktop\de-starter-pack\Resources\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
with 
	(
	firstrow = 2
	, fieldterminator = ','
	, tablock
	)

;
select *
from bronze.crm_sales_details


-- bronze.erp_cust_az12 -- 

truncate table bronze.erp_cust_az12

;

bulk insert bronze.erp_cust_az12
from 'C:\Users\qcuon\Desktop\de-starter-pack\Resources\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
with 
	(
	firstrow = 2
	, fieldterminator = ','
	, tablock
	)

;
select *
from bronze.erp_cust_az12

-- bronze.erp_loc_a101 -- 

truncate table bronze.erp_loc_a101

;

bulk insert bronze.erp_loc_a101
from 'C:\Users\qcuon\Desktop\de-starter-pack\Resources\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
with 
	(
	firstrow = 2
	, fieldterminator = ','
	, tablock
	)

;
select *
from bronze.erp_loc_a101


-- bronze.erp_pxcat_g1v2 -- 

truncate table bronze.erp_pxcat_g1v2

;

bulk insert bronze.erp_pxcat_g1v2
from 'C:\Users\qcuon\Desktop\de-starter-pack\Resources\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
with 
	(
	firstrow = 2
	, fieldterminator = ','
	, tablock
	)

;
select *
from bronze.erp_pxcat_g1v2

