create table patients (
	id  int(3) NOT NULL AUTO_INCREMENT,
	name varchar(120) NOT NULL,
	dob varchar(120) NOT NULL,
	provider_name varchar(120),
	address varchar(120) NOT NULL,
	phone_number varchar(120),
	email_id varchar(220) NOT NULL,
	PRIMARY KEY (id)
);