# Rockbuster Stealth Data Analysis Project using SQL
## Project Summary
Rockbuster Stealth LLC, a global movie rental company, underwent detailed SQL-based analysis to inform their 2020 strategy. The analysis covered key business aspects, including revenue drivers by region, category, and product, as well as customer geographic distribution and struggling areas. SQL was used to query and analyze the data, leading to data-driven insights. These insights were visualized using Tableau and presented to the Management Board, highlighting crucial issues and opportunities for the company's strategic focus.

### Key Questions and Objectives
* Which movies contributed the most/least to revenue gain?
* What are the most popular categories and rating
* What was the average rental duration for all videos?
* Which countries are Rockbuster customers based in?
* Do sales figures vary between geographic regions?
* Where are customers with a high lifetime value based?

### Overview of the data & tools
The Rockbuster database, designed for managing and storing information for a video rental business, utilizes a snowflake schema in PostgreSQL. It includes comprehensive details about films, actors, inventory, rentals, payments, and other related aspects. The schema is organized with fact tables like rental and payment at its core, surrounded by dimension tables such as inventory and customer, which are further surrounded by sub-dimension tables, facilitating efficient data management and querying. PgAdmin 4 and Postgres SQL were used when working with data, and Tableau Public was used to create visualizations.

