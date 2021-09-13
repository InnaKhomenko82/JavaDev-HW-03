create database hw-3;

create table developers (
  id_developer int not null auto_increment,
  dev_name varchar(45) not null,
  dev_age int default null,  
  id_company int default null,
  primary key (id_developer),
  foreign key (id_company) references companies (id_company)
);

create table skills (
  id_skill int unsigned not null auto_increment,
  skills_field varchar(45) default null,
  skills_level varchar(45) default null,
  primary key (id_skill)
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
  company_id int not null,
  project_id int not null,
  foreign key (company_id) references companies (id_company),
  foreign key (project_id) references projects (id_project)
);

create table customers_projects (
  customer_id int not null,
  project_id int not null,
  foreign key (customer_id) references customers (id_customers),
  foreign key (project_id) references projects (id_project)
);

create table developers_projects (
  developer_id int not null,
  project_id int not null,
  foreign key (developer_id) references developers (id_developer),
  foreign key (project_id) references projects (id_project)
);

create table developers_skills (
  developer_id int not null,
  skill_id int not null,
  foreign key (developer_id) references developers (id_developer),
  foreign key (skill_id) references skills (id_skill)
);