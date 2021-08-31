create database hw-3;

create table developers (
id_developer int not null auto_increment,
dev_name varchar(45) not null,
dev_age int default null,
dev_skills int default null,
id_company int default null,
primary key (id_developer)
);

create table skills (
id_dev_skill int unsigned not null auto_increment,
skills_field varchar(45) default null,
skills_description varchar(45) default null,
primary key (id_dev_skill)
);

create table projects (
id_project int not null auto_increment,
project_name varchar(45) default null,
project_start date default null,
primary key (id_project)
);

create table companies (
id_company int not null auto_increment,
company_name varchar(45) default null,
company_quantity_staff int default null,
primary key (id_company)
);

create table customers (
id_customers int not null auto_increment,
customer_name varchar(45) default null,
customer_category varchar(45) default null,
primary key (id_customers)
);

create table companies_projects (
companies_id_company int not null,
projects_id_project int not null,
primary key (companies_id_company,projects_id_project),
key fk_companies_projects_projects (projects_id_project),
key fk_companies_projects_companies (companies_id_company),
foreign key (companies_id_company) references companies (id_company),
foreign key (projects_id_project) references projects (id_project)
);

create table customers_projects (
customers_id_customers int not null,
projects_id_project int not null,
primary key (customers_id_customers,projects_id_project),
key fk_customers_projects_projects (projects_id_project),
key fk_customers_projects_customers (customers_id_customers),
foreign key (customers_id_customers) references customers (id_customers),
foreign key (projects_id_project) references projects (id_project)
);

create table developers_projects (
developers_id_developer int not null,
projects_id_project int not null,
primary key (developers_id_developer,projects_id_project),
key fk_developers_projects_projects (projects_id_project),
key fk_developers_projects_developers (developers_id_developer),
foreign key (developers_id_developer) references developers (id_developer),
foreign key (projects_id_project) references projects (id_project)
);

create table developers_skills (
developers_id_developer int not null,
skills_id_dev_skill int unsigned not null,
primary key (developers_id_developer,skills_id_dev_skill),
key fk_developers_skills_skills (skills_id_dev_skill),
key fk_developers_skills_developers (developers_id_developer),
foreign key (developers_id_developer) references developers (id_developer),
foreign key (skills_id_dev_skill) references skills (id_dev_skill)
);
