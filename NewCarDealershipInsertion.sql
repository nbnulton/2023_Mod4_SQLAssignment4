insert into salesperson(salesperson_id, salesperson_first_name, salesperson_last_name)
values (1, 'Antoine', 'Bradley');

insert into cars(car_id, car_make, car_model, car_purchase_amount, salesperson_id)
values (1, '2011 Subaru', 'WRX', 20000.00, 1);

insert into invoice(invoice_id, invoice_date, car_id)
values (1, '2023-04-05', 1);

insert into customer(customer_id, customer_first_name, customer_last_name, address, invoice_id)
values (1, 'Cora', 'Deloine', '123 Madison Blvd Chicago, IL 60614', 1);




insert into customer(customer_id, customer_first_name, customer_last_name, address)
values (2, 'Gary', 'Harlem', '456 Torren Ave Chicago, IL 60614');

insert into cars(car_id, car_make, car_model, car_license_plate)
values (2, '2013 Subaru', 'Legacy 2.5i', 12345678);

insert into invoice(customer_id, invoice_id, invoice_date, car_id)
values(2, 2, '2023-04-05', 2);

insert into mechanics(mechanic_id, mech_first_name, mech_last_name)
values (1, 'Eric', 'Farsley');

insert into service(car_id, service_ticket_id, service_amount, mechanic_id)
values (2, 1, 180.00, 1);



create or replace function salespersonAddition(_salesperson_id INTEGER, _salesperson_first_name VARCHAR, _salesperson_last_name VARCHAR)
returns void
as $MAIN$
begin 
	insert into salesperson(salesperson_id, salesperson_first_name, salesperson_last_name)
	values (_salesperson_id, _salesperson_first_name, _salesperson_last_name);
end;
$MAIN$
language plpgsql;

select salespersonAddition(2, 'Ivan', 'Jackson')

select * from salesperson




create or replace function carsAddition(_car_id INTEGER, _car_make VARCHAR, _car_model VARCHAR, _car_purchase_amount NUMERIC, _car_license_plate NUMERIC)
returns void
as $MAIN$
begin 
	insert into cars(car_id, car_make, car_model, car_purchase_amount, car_license_plate)
	values(_car_id, _car_make, _car_model, _car_purchase_amount, _car_license_plate);
end;
$MAIN$
language plpgsql;


select carsAddition(3, '1996 Suzuki', 'Escudo Pikes Peak', 20000.00, 00000000);

select * from cars




















