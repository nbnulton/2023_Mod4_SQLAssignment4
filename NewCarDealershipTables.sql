create table salesperson(
	salesperson_id SERIAL primary key,
	salesperson_first_name VARCHAR(100),
	salesperson_last_name VARCHAR(100)
);

create table cars(
	car_id SERIAL primary key,
	car_make VARCHAR(100),
	car_model VARCHAR(100),
	car_purchase_amount NUMERIC(8,2),
	car_license_plate NUMERIC(8),
	salesperson_id INTEGER,
	foreign key(salesperson_id) references salesperson(salesperson_id)
);

create table service(
	service_ticket_id SERIAL primary key,
	service_amount NUMERIC(8,2),
	parts_id SERIAL,
	parts_amount NUMERIC(8,2),
	car_id INTEGER,
	foreign key(car_id) references cars(car_id)
);

create table mechanics(
	mechanic_id SERIAL primary key,
	mech_first_name VARCHAR(100),
	mech_last_name VARCHAR(100)
);

create table invoice(
	invoice_id SERIAL primary key,
	invoice_date DATE,
	car_id INTEGER,
	foreign key(car_id) references cars(car_id)
);

create table customer(
	customer_id SERIAL primary key,
	customer_first_name VARCHAR(100),
	customer_last_name VARCHAR(100),
	address VARCHAR(100),
	invoice_id INTEGER,
	foreign key(invoice_id) references invoice(invoice_id)
);



alter table salesperson
add car_id INTEGER,
add foreign key(car_id) references cars(car_id);

alter table cars
add	service_ticket_id INTEGER,
add	foreign key(service_ticket_id) references service(service_ticket_id);

alter table cars
add	invoice_id INTEGER,
add	foreign key(invoice_id) references invoice(invoice_id);

alter table service
add	mechanic_id INTEGER,
add	foreign key(mechanic_id) references mechanics(mechanic_id);

alter table invoice
add customer_id INTEGER,
add foreign key(customer_id) references customer(customer_id);