create or alter procedure bronze.load_bronze as
begin
	
	declare @start_time datetime;
	declare @end_time datetime;

	set @start_time = getdate();

	begin try
		print 'Loading Bronze Layer';

		print 'Loading CRM Table';

		-- bronze.crm_cust_info -- 

		print 'Loading bronze.crm_cust_info';

		truncate table bronze.crm_cust_info;

		bulk insert bronze.crm_cust_info
		from 'C:\Users\qcuon\Desktop\de-starter-pack\Resources\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
		with 
			(
			firstrow = 2
			, fieldterminator = ','
			, tablock
			);

		-- bronze.crm_prd_info -- 

		print 'Loading bronze.crm_prd_info';

		truncate table bronze.crm_prd_info;

		bulk insert bronze.crm_prd_info
		from 'C:\Users\qcuon\Desktop\de-starter-pack\Resources\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
		with 
			(
			firstrow = 2
			, fieldterminator = ','
			, tablock
			);

		-- bronze.crm_sales_details -- 

		print 'Loading bronze.crm_sales_details';

		truncate table bronze.crm_sales_details;

		bulk insert bronze.crm_sales_details
		from 'C:\Users\qcuon\Desktop\de-starter-pack\Resources\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
		with 
			(
			firstrow = 2
			, fieldterminator = ','
			, tablock
			);


		print 'Loading ERP Table';

		-- bronze.erp_cust_az12 -- 

		print 'Loading bronze.erp_cust_az12';

		truncate table bronze.erp_cust_az12;

		bulk insert bronze.erp_cust_az12
		from 'C:\Users\qcuon\Desktop\de-starter-pack\Resources\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
		with 
			(
			firstrow = 2
			, fieldterminator = ','
			, tablock
			);


		-- bronze.erp_loc_a101 -- 

		print 'Loading bronze.erp_loc_a101';

		truncate table bronze.erp_loc_a101;

		bulk insert bronze.erp_loc_a101
		from 'C:\Users\qcuon\Desktop\de-starter-pack\Resources\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
		with 
			(
			firstrow = 2
			, fieldterminator = ','
			, tablock
			);



		-- bronze.erp_pxcat_g1v2 -- 

		print 'Loading bronze.erp_pxcat_g1v2';

		truncate table bronze.erp_pxcat_g1v2;

		bulk insert bronze.erp_pxcat_g1v2
		from 'C:\Users\qcuon\Desktop\de-starter-pack\Resources\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
		with 
			(
			firstrow = 2
			, fieldterminator = ','
			, tablock
			);
	end try

	begin catch

		print 'Error occured';
		print 'Error message ' + error_message();
		print 'Error number ' + cast(error_number() as nvarchar) ;

	end catch;
	
	set @end_time = getdate();

	print '>> Load duration: ' + cast(datediff(second, @start_time, @end_time) as nvarchar) + ' seconds';

end;
