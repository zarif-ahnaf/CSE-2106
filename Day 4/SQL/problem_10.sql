ALTER TABLE Sales_Details ADD total_sales float;
UPDATE Sales_Details SET total_sales = Unit_Price * Unit_Sales;