CREATE DATABASE hw-3;

CREATE TABLE developers (
  id_developer int NOT NULL AUTO_INCREMENT,
  dev_name varchar(45) NOT NULL,
  dev_age int DEFAULT NULL,
  dev_skills int DEFAULT NULL,
  id_company int DEFAULT NULL,
  PRIMARY KEY (id_developer),
  KEY fk_id_company (id_company),
  CONSTRAINT fk_id_company FOREIGN KEY (id_company) REFERENCES companies (id_company)
);

CREATE TABLE skills (
  id_dev_skill int unsigned NOT NULL AUTO_INCREMENT,
  skills_field varchar(45) DEFAULT NULL,
  skills_description varchar(45) DEFAULT NULL,
  PRIMARY KEY (id_dev_skill)
);

CREATE TABLE projects (
  id_project int NOT NULL AUTO_INCREMENT,
  project_name varchar(45) DEFAULT NULL,
  project_start date DEFAULT NULL,
  PRIMARY KEY (id_project)
);

CREATE TABLE companies (
  id_company int NOT NULL AUTO_INCREMENT,
  company_name varchar(45) DEFAULT NULL,
  company_quantity_staff int DEFAULT NULL,
  PRIMARY KEY (id_company)
);

CREATE TABLE customers (
  id_customers int NOT NULL AUTO_INCREMENT,
  customer_name varchar(45) DEFAULT NULL,
  customer_category varchar(45) DEFAULT NULL,
  PRIMARY KEY (id_customers)
);

CREATE TABLE companies_projects (
  companies_id_company int NOT NULL,
  projects_id_project int NOT NULL,
  PRIMARY KEY (companies_id_company,projects_id_project),
  KEY fk_companies_projects_projects (projects_id_project),
  KEY fk_companies_projects_companies (companies_id_company),
  CONSTRAINT fk_companies_projects_companies FOREIGN KEY (companies_id_company) REFERENCES companies (id_company),
  CONSTRAINT fk_companies_projects_projects FOREIGN KEY (projects_id_project) REFERENCES projects (id_project)
);

CREATE TABLE customers_projects (
  customers_id_customers int NOT NULL,
  projects_id_project int NOT NULL,
  PRIMARY KEY (customers_id_customers,projects_id_project),
  KEY fk_customers_projects_projects (projects_id_project),
  KEY fk_customers_projects_customers (customers_id_customers),
  CONSTRAINT fk_customers_projects_customers FOREIGN KEY (customers_id_customers) REFERENCES customers (id_customers),
  CONSTRAINT fk_customers_projects_projects FOREIGN KEY (projects_id_project) REFERENCES projects (id_project)
);

CREATE TABLE developers_projects (
  developers_id_developer int NOT NULL,
  projects_id_project int NOT NULL,
  PRIMARY KEY (developers_id_developer,projects_id_project),
  KEY fk_developers_projects_projects (projects_id_project),
  KEY fk_developers_projects_developers (developers_id_developer),
  CONSTRAINT fk_developers_projects_developers FOREIGN KEY (developers_id_developer) REFERENCES developers (id_developer),
  CONSTRAINT fk_developers_projects_projects FOREIGN KEY (projects_id_project) REFERENCES projects (id_project)
);

CREATE TABLE developers_skills (
  developers_id_developer int NOT NULL,
  skills_id_dev_skill int unsigned NOT NULL,
  PRIMARY KEY (developers_id_developer,skills_id_dev_skill),
  KEY fk_developers_skills_skills (skills_id_dev_skill),
  KEY fk_developers_skills_developers (developers_id_developer),
  CONSTRAINT fk_developers_skills_developers FOREIGN KEY (developers_id_developer) REFERENCES developers (id_developer),
  CONSTRAINT fk_developers_skills_skills FOREIGN KEY (skills_id_dev_skill) REFERENCES skills (id_dev_skill)
);