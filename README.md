# SQL_case_study

Project Overview:
This SQL project comprises queries for analyzing retail events data stored in the database retail_events_db. The database includes tables such as fact_events, dim_products, dim_stores, and dim_campaigns.

# Queries Overview:
1. Viewing Fact Events:
. Lists all entries in the fact_events table.
. Filtering Products Based on Promotions:
. Selects products from dim_products that were part of promotions where the base price was over $500 and the promotion type was 'BOGOF' (Buy One Get One Free).
2. Counting Stores by City:
. Counts the number of stores in each city from the dim_stores table and sorts them in descending order.
3. Calculating Revenue Before and After Campaigns:
. Calculates the total revenue before and after campaigns from the fact_events table, grouped by campaign ID.
4. Calculating Incremental Capture Units (ICU):
. Calculates the Incremental Capture Units (ICU) percentage for each product based on sales before and after promotions.
5. Calculating Increase/Decrease in Revenue Percentage:
. Calculates the percentage increase or decrease in revenue for each product after promotions.
# Instructions for Use:
1. Database Setup:
. Ensure you have the retail_events_db database set up in your MySQL server.
2. Executing Queries:
. Copy each SQL query and execute it in your MySQL client connected to the retail_events_db database.
# Readme Usage:
1. Clone this repository to your local machine.
2. Modify the queries or add new ones as needed for your analysis.
3. Update the readme file with any changes or additional information about the project.
4. Push the changes to your GitHub repository.
# Sharing the Project:
. Share the GitHub repository link with collaborators or stakeholders to view the project.
# Notes:
. This project is intended for analyzing retail events data and may require customization for specific use cases.
. Ensure proper access permissions and data confidentiality when sharing or collaborating on this project.






