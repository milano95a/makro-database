--Branch (branch_id, branch_name, phone, city, street, house_no, zip)
--PK: branch_id

CREATE TABLE Branch (
						branch_id INT IDENTITY(1,1) NOT NULL, 
						branch_name VARCHAR(255) NOT NULL, 
						phone int not null,
						city VARCHAR(255),
						street VARCHAR(255),
						house_no INT, 
						zip INT,
CONSTRAINT branch_primary_key PRIMARY KEY (branch_id),
);

--Supplier(supplier_id, company_name, phone, city, street, house_no, zip)
--PK: supplier_id

CREATE TABLE Supplier (
						supplier_id INT IDENTITY(1,1) NOT NULL,
						company_name VARCHAR(255) NOT NULL, 
						phone INT not null,
						city VARCHAR(255), 
						street VARCHAR(255),
						house_no INT, 
						zip INT,
constraint supplier_primary_key primary key (supplier_id)
);

--StaffShift(shift_id, shift_type
--PK:shift_id

create table StaffShift(
						shift_id int identity(1,1) not null,
						shift_type varchar(100) not null,
constraint shift_primary_key primary key (shift_id),
check ((shift_type = 'morning') OR (shift_type = 'afternoon'))
);

--Position (position_id, title, salary)
--PK: position 
create table Position(
						position_id int identity(1,1) not null,
						title varchar(50) not null,
						salary float not null,
constraint position_primary_key primary key (position_id)
);

--Electronics (electronics_id, product_name, product_description, price, amount_in_stock, warranty_in_months, supplier_id)
--PK: electronics_id
--FK: supplier_id references Supplier(supplier_id)

create table Electronics(
						electronics_id int identity(1,1) not null,
						product_name varchar(255) not null,
						product_description varchar(5000),
						price float not null,
						amount_in_stock int not null,						
						warranty_in_months int,
						supplier_id int not null,
constraint electronics_primary_key primary key (electronics_id),
constraint electronics_supplier_foreign_key foreign key (supplier_id) references Supplier (supplier_id),
check (price > 0.1),
check (amount_in_stock > 0),
check (warranty_in_months < 56)
);

--DailyProducts (dailyp_id, product_name, product_description, price, amount_in_stock, manufactured_date, expiration_date, supplier_id)
--PK: product_id
--FK: supplier_id references Supplier(supplier_id)

create table DailyProducts(
						dailyp_id int identity(1,1) not null,
						product_name varchar(255) not null,
						product_description varchar(5000),
						price float not null,
						amount_in_stock int not null,
						manufactured_date date,
						expiration_date date,
						supplier_id int not null,
constraint daily_products_primary_key primary key (dailyp_id),
constraint daily_product_supplier_foreign_key foreign key (supplier_id) references Supplier (supplier_id),
check (price > 0.1),
check (amount_in_stock > 0)
--check the is 2 months to expiration day 
);

--OtherProducts (otherp_id, product_name, product_description, price, amount_in_stock, supplier_id)
--PK: product_id
--FK: supplier_id references Supplier(supplier_id)

create table OtherProducts(
						otherp_id int identity(1,1) not null,
						product_name varchar(255) not null,
						product_description varchar(5000),
						price float not null,
						amount_in_stock int not null,						
						supplier_id int not null,
constraint other_primary_key primary key (otherp_id),
constraint other_product_supplier_foreign_key foreign key (supplier_id) references Supplier (supplier_id),
check (price > 0.1),
check (amount_in_stock > 0.1)
);

--Staff (staff_id, first_name, last_name, dob, city, street, house_no, zip, position_id, branch_id)
--PK: staff_id
--FK: position_id references Position(position_id)
--FK: staff branch references Branch(branch_id)

CREATE TABLE Staff (
						staff_id int identity(1,1) NOT NULL,
						first_name varchar(255) NOT NULL, 
						last_name varchar(255) NOT NULL,
						dob date not null,					 
						city varchar(255), 
						street varchar(255),
						house_no int, 
						zip int,
						position_id int not null,
						staff_branch int not null,
constraint staff_primary_key primary key (staff_id),
constraint position_foreign_key foreign key (position_id) references Position (position_id),
constraint staff_branch_id foreign key (staff_branch) references Branch(branch_id)
--make sure staff cannot be registered unless they are 21 years old
);

--Phone (staff_id, phone)
--PK: staff_id

create table Phone(
					staff_id int not null,					
					phone int not null,
constraint phone_staff_foreign_key foreign key (staff_id) references Staff(staff_id)
-- make sure one employee cannot have more than 5 phone numbers
);

--Manger (staff_id, bonus, manage_branch_id)
--PK: staff_id
--FK: manage_branch_id references Branch(branch_id)

create table Manager (
						staff_id int not null,
						bonus int,
						manage_branch_id int not null,
constraint manager_staff_foregin_key foreign key (staff_id) references Staff(staff_id),
constraint manage_foreign_key foreign key (manage_branch_id) references Branch(branch_id)
);

--SalesStaff(staff_id, supervisor_id, shift_id)
--PK: staff_id
--FK: supervisor_id references Sales Staff(staff_id)
--FK: shift_id references Shift(shift_id)

CREATE TABLE SalesStaff (
						staff_id int not null,
						staff_shift int not null,
						staff_supervisor int ,
constraint sales_staff_foreign_key foreign key (staff_id) references Staff(staff_id),
constraint staff_shift_foreign_key foreign key (staff_shift) references StaffShift(shift_id),
constraint staff_supervisor foreign key (staff_id) references Staff(staff_id)
);

--InventoryStaff(staff_id, supervisor_id)
--FK: staff_id references Staff(staff_id)
--FK: supervisor_id references Inventory Staff(staff_id)
CREATE TABLE InventoryStaff (
						staff_id int not null,
						supervisor_id int,
constraint inventory_staff_foreign_key foreign key (staff_id) references Staff(staff_id),
constraint supervisor_foreign_key foreign key (supervisor_id) references Staff(staff_id)
);

--Orders (order_id, staff_id, electronics_id, dailyp_id, otherp_id,supplier_id, date, amount)
--PK: order_id
--FK: staff_id references Staff(staff_id)
--FK: electronics_id references Electronics(electronics_id)
--FK: dailyp_id references DailyProducts	(dailyp_id)
--FK: otherp_id references OtherProduct(otherp_id)
--FK: supplier_id references Supplier(supplier_id)
create table Orders(
					order_id int identity(1,1) not null,
					staff_id int not null,
					electronics_id int,
					dailyp_id int,
					otherp_id int,
					supplier_id int,
					order_amount int,
					order_date date,
constraint order_primary_key primary key (order_id),
constraint oreder_staff_foreign_key foreign key (staff_id) references Staff(staff_id),
constraint order_electronics_foreign_key foreign key (electronics_id) references Electronics (electronics_id),
constraint order_daily_product_foreign_key foreign key (dailyp_id) references DailyProducts (dailyp_id),
constraint order_other_product_foreign_key foreign key (otherp_id) references OtherProducts (otherp_id),
constraint order_supplier_foreign_key foreign key (supplier_id) references Supplier(supplier_id),
check (order_amount > 0)
);

--Sales (sales_id, branch_id, staff_id, electronics_id,dailyp_id,otherp_id, sale_amount, sale_date)
--PK: sales_id
--FK: branch_id references Branch(branch_id)
--FK: staff_id references Staff(staff_id)
--FK: electronics_id references Electronics(electronics_id)
--FK: dailyp_id references DailyProducts(dailyp_id)
--FK: otherp_id references OtherProduct(otherp_id)
create table Sales(
					sale_id int identity(1,1) not null,
					branch_id int not null,
					staff_id int,
					electronics_id int,
					dailyp_id int,
					otherp_id int,
					sale_amount int,
					sale_date date,
constraint sales_primary_key primary key (sale_id),
constraint sales_branch_foreign_key foreign key (branch_id) references Branch(branch_id),
constraint sale_staff_foreign_key foreign key (staff_id) references Staff(staff_id),
constraint sales_electronics_foreign_key foreign key (electronics_id) references Electronics (electronics_id),
constraint sales_daily_product_foreign_key foreign key (dailyp_id) references DailyProducts (dailyp_id),
constraint sales_other_product_foreign_key foreign key (otherp_id) references OtherProducts (otherp_id),
check (sale_amount > 0)
);

drop table Orders, Sales 
drop table Electronics, DailyProducts, OtherProducts
drop table Supplier
drop table Phone
drop table InventoryStaff, Manager, SalesStaff,Staff
drop table StaffShift
drop table Branch, Position
