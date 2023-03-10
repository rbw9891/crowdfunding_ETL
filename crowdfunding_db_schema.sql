CREATE TABLE campaign (
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL 
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
	company_name VARCHAR(100) NOT NULL
	description VAARCHAR(250) NOT NULL
	goal NUMERIC(10,1) NOT NULL
	pledged NUMERIC(10,1) NOT NULL
	outcome VARCHAR(10) NOT NULL
	backers_count INT NOT NULL
	country VARCHAR(20) NOT NULL
	currency VARCHAR(10) NOT NULL
	launch_date VARCHAR(50) NOT NULL
	end_date VARCHAR(50) NOT NULL
	category_id DATE NOT NULL
	FOREIGN KEY (category_id) REFERENCES category(category_id)
	subcategory_id VARCHAR(10) NOT NULL
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

CREATE TABLE category (
	category_id VARCHAR(10) PRIMARY KEY NOT NULL
	category VARCHAR(50) NOT NULL
) 

CREATE TABLE subcategory(
	subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL
	subcategory VARCHAR(50) NOT NULL
)

CREATE TABLE contacts(
	contact_id INT PRIMARY KEY NOT NULL
	first_name VARCHAR(100) NOT NULL
	last_name VARCHAR(100) NOT NULL
	email VARCHAR(100) NOT NULL
)
