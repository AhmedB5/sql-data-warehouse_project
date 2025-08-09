
-- create  procedure

CREATE OR  ALTER PROCEDURE bronze.load_bronze AS 
BEGIN

		-- crm insert

		bulk insert bronze.crm_cust_info
		from 'C:\Users\LAP STORE\Desktop\crm\cust_info.csv'
		with(
		  FIELDTERMINATOR = ',',   
			FIRSTROW = 2,           
			TABLOCK
		)
		bulk insert  bronze.crm_sales_details
		from 'C:\Users\LAP STORE\Desktop\crm\sales_details.csv'
		with(
		   FIELDTERMINATOR = ',' , 
		   FIRSTROW = 2 , 
		   TABLOCK
		)

		bulk insert  bronze.erp_cust_az12
		from 'C:\Users\LAP STORE\Desktop\erp\CUST_AZ12.csv'
		with(
		   FIELDTERMINATOR = ',' , 
		   FIRSTROW = 2 , 
		   TABLOCK
		)

		-- erp insert
		bulk insert  bronze.erp_loc_a101
		from 'C:\Users\LAP STORE\Desktop\erp\LOC_A101.csv'
		with(
		   FIELDTERMINATOR = ',' , 
		   FIRSTROW = 2 , 
		   TABLOCK
		)

		bulk insert  bronze.erp_px_cat_g1v2
		from 'C:\Users\LAP STORE\Desktop\erp\PX_CAT_G1V2.csv'
		with(
		   FIELDTERMINATOR = ',' , 
		   FIRSTROW = 2 , 
		   TABLOCK
		)
END
