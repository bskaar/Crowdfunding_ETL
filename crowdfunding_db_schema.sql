--Drop code just in case a table needs to be reset.
DROP TABLE Campaign;
DROP TABLE Contacts;
DROP TABLE Category;
DROP TABLE Subcategory;
---------------------------------------------------------------------

-- initialize tables (4 tables)
CREATE TABLE Category (
  	category_id VARCHAR,
  	category VARCHAR,
	PRIMARY KEY (category_id)
);

CREATE TABLE Subcategory (
  	subcategory_id VARCHAR,
  	subcategory VARCHAR,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE Campaign (
  	cf_id INT NOT NULL,
  	contact_id INT NOT NULL,
    company_name VARCHAR,
    description VARCHAR,
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR,
    backers_count INT,
    country VARCHAR,
    currency VARCHAR,
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR,
    subcategory_id VARCHAR,
	PRIMARY KEY (contact_id),
    FOREIGN KEY(category_id) REFERENCES Category(category_id),
    FOREIGN KEY(subcategory_id) REFERENCES Subcategory(subcategory_id)
);

CREATE TABLE Contacts (
  	contact_id INT,
  	first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR,
	FOREIGN KEY(contact_id) REFERENCES Campaign(contact_id)
);
---------------------------------------------------------------------

--Check if the tables work.
SELECT *
FROM Category

SELECT *
FROM Subcategory

SELECT *
FROM Campaign

SELECT *
FROM Contacts
