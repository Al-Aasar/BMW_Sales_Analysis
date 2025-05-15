Create database BMW ;

use BMW ;


ALTER TABLE BMW_Models_1 ALTER COLUMN Horsepower INT;
ALTER TABLE BMW_Models_1 ALTER COLUMN Transmission VARCHAR(100);
ALTER TABLE BMW_Models_1 ALTER COLUMN [Body_Type] VARCHAR(50);
ALTER TABLE BMW_Models_1 ALTER COLUMN [Drive_Type] CHAR(3);
ALTER TABLE BMW_Models_1 ALTER COLUMN [Country_of_Manufacture] CHAR(100);


ALTER TABLE Countries_with_Flags_URL_1 ALTER COLUMN [Country_code] VARCHAR(10);
ALTER TABLE Countries_with_Flags_URL_1 ALTER COLUMN Region VARCHAR(100);
ALTER TABLE Countries_with_Flags_URL_1 ALTER COLUMN Flag VARCHAR(255);


ALTER TABLE Cleaned_BMW_Sales_Data_1 ALTER COLUMN [Date] DATE;
ALTER TABLE Cleaned_BMW_Sales_Data_1 ALTER COLUMN Model VARCHAR(100);
ALTER TABLE Cleaned_BMW_Sales_Data_1 ALTER COLUMN Revenue DECIMAL(18,2);
ALTER TABLE Cleaned_BMW_Sales_Data_1 ALTER COLUMN [Quantity_Sold] TINYINT;
ALTER TABLE Cleaned_BMW_Sales_Data_1 ALTER COLUMN Region NVARCHAR(100);
ALTER TABLE Cleaned_BMW_Sales_Data_1 ALTER COLUMN Country VARCHAR(100);
ALTER TABLE Cleaned_BMW_Sales_Data_1 ALTER COLUMN Channel VARCHAR(100);
ALTER TABLE Cleaned_BMW_Sales_Data_1 ALTER COLUMN Cost DECIMAL(18,2);
ALTER TABLE Cleaned_BMW_Sales_Data_1 ALTER COLUMN [Payment_Method] VARCHAR(50);
ALTER TABLE Cleaned_BMW_Sales_Data_1 ALTER COLUMN [Gross_Revenue] DECIMAL(18,3);
ALTER TABLE Cleaned_BMW_Sales_Data_1 ALTER COLUMN [Total_Cost] DECIMAL(18,3);
ALTER TABLE Cleaned_BMW_Sales_Data_1 ALTER COLUMN [Net_Profit] DECIMAL(18,3);
ALTER TABLE Cleaned_BMW_Sales_Data_1 ALTER COLUMN [Percentage_of_Net_Profit] FLOAT;

ALTER TABLE Car_Images_1 ALTER COLUMN [Model] nvarchar(50);


ALTER TABLE Cleaned_BMW_Sales_Data_1
ADD CONSTRAINT FK_BMW_Sales_Model FOREIGN KEY (Model) REFERENCES BMW_Models_1(Model);


ALTER TABLE Cleaned_BMW_Sales_Data_1
ADD CONSTRAINT FK_BMW_Sales_Country FOREIGN KEY (Country) REFERENCES Countries_with_Flags_URL_1(Country);

