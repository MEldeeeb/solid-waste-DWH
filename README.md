# solid-waste-DWH

**Introduction**

This document describes the development of a data warehouse for a solid waste management company operating across major cities in Brazil. The data warehouse will facilitate the creation of insightful reports for optimizing waste collection and recycling operations.

**Data Sources**

The data warehouse will integrate data from various sources, likely including:

* Waste collection trips
* Truck details (types, capacities)
* Waste types and classifications
* Geographic zones (cities, districts)
* Dates and timestamps

**Data Warehouse Design**

A star schema design is employed for efficient storage and analysis of the data.

**Dimension Tables:**

* **MyDimDate:**
    * Stores date and time-related attributes (year, month, quarter, day of week, etc.).
    * Granularity: Daily (may be adjusted based on data collection frequency).
* **MyDimWaste:**
    * Captures details about waste types (recyclables, organics, general waste, etc.).
    * May include properties like composition and weight conversion factors.
* **MyDimZone:**
    * Represents geographic areas (cities, districts, postal codes).
    * May contain population data or demographics.

**Fact Table:**

* **MyFactTrips:**
    * Stores core metrics related to waste collection trips.
    * Includes foreign keys to connect with the dimension tables.
    * Likely contains columns like:
        * Trip ID (unique identifier)
        * Date/Time of collection
        * City
        * Station ID (collection point)
        * Truck Type
        * Waste Type
        * Weight of waste collected

**Data Analysis Examples**

This project demonstrates various data analysis techniques using the data warehouse:

* **Grouping Sets Queries:** Group and aggregate data across multiple dimensions with customized combinations.
* **Rollup Queries:** Summarize data progressively to higher levels of hierarchies (e.g., year, quarter, month).
* **Cube Queries:** Analyze multidimensional data with rollup capabilities at different levels (e.g., year, city, station, average waste collected).

**Materialized View:**

* **max_waste_per_station:** A pre-computed view showing the maximum waste collected per station, truck type, and city for faster querying.
* **Dataforcognos:** A pre-computed view that provides only data that will be used by Cognos to create the dashboard



