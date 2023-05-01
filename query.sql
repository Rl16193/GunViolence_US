-- Create tables for Gun_Violence
CREATE TABLE Initial_Data (
	States varchar(40) NOT NULL,
	Median_household_income_2019 real NOT NULL,
	Median_family_income_2019 real NOT NULL,
	Population_2020 real NOT NULL,
	Number_of_households_2019 real NOT NULL,
	Number_of_families_2019 real NOT NULL,
	Growth_in_Income_over_10_years real NOT NULL,
	Inequality_coefficient_2019 real NOT NULL,
	Inequality_coefficient_2015to2019 real NOT NULL,
	Unemployment_Rate real NOT NULL,
	Poverty_Rate real NOT NULL,
	Federal_Funding real NOT NULL,
	State_Funding real NOT NULL,
	Social_Funding real NOT NULL,
	PRIMARY KEY (States)
);

-- Create Table for Gun_Violence_Data
CREATE TABLE Gun_Data (
	fips INT NOT NULL,
	States VARCHAR(40) NOT NULL,
	density REAL NOT NULL,
	pop2023	BIGINT NOT NULL,
	pop2022	BIGINT NOT NULL,
	pop2020	BIGINT NOT NULL,
	pop2019	REAL NOT NULL,
	pop2010	BIGINT NOT NULL,
	growthRate REAL NOT NULL,
	growth INT NOT NULL,
	growthSince2010	REAL NOT NULL,
	lawsRank INT NOT NULL,
	grade2019 INT NOT NULL,
	gunDeathRate REAL NOT NULL,
	staterank INT NOT NULL,
	PRIMARY KEY (States)
);

-- Create Table for Population Distribution
CREATE TABLE pop_distribution (
	States VARCHAR(40) NOT NULL,
	White REAL NOT NULL,
	Black REAL NOT NULL,
	Hispanic REAL NOT NULL,
	Asian REAL NOT NULL,
	American_Indian REAL NOT NULL,
	Other_Pacific_Islander REAL NOT NULL,
	Multiple_Races REAL NOT NULL,
	Total REAL NOT NULL
);

SELECT * FROM gun_data;

-- Modify Gun_violence Data
ALTER TABLE gun_data
DROP COLUMN fips,
DROP COLUMN pop2023,
DROP COLUMN	pop2022,
DROP COLUMN pop2020,
DROP COLUMN pop2019,
DROP COLUMN pop2010,
DROP COLUMN growthRate,
DROP COLUMN growth,
DROP COLUMN staterank;

-- Modify Population Distribution data
ALTER TABLE pop_distribution
DROP COLUMN total;

SELECT * FROM pop_distribution;

-- Create Final Data_Table by merging
CREATE TABLE final_data AS(
	SELECT * FROM initial_data
	INNER JOIN pop_distribution USING(states)
	INNER JOIN gun_data USING(states)
	ORDER BY initial_data.states
);

SELECT * FROM final_data;
