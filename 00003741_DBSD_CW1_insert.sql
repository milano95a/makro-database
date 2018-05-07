--Branch (branch_id, branch_name, phone, city, street, house_no, zip)
--PK: branch_id
insert into Branch(branch_name, phone, city, street, house_no, zip) values ('MAKRO MEGAPLANET', 1234567, 'Tashkent', 'Ahmad Donish', 11, 100005);
insert into Branch(branch_name, phone,city,street, house_no, zip) values ('MAKRO TASHMI' , 1375875,'Tashkent', 'Almazar', 448, 100004);
insert into Branch(branch_name, phone,city,street, house_no, zip) values ('MAKRO SAYOHAT' ,9745936,'Tashkent', 'Buyuk Ipak Yuli', 123, 100067);
insert into Branch(branch_name, phone,city,street, house_no, zip) values ('MAKRO SAMPI',1859305 ,'Tashkent', 'Temur Malik', 2, 100082);
insert into Branch(branch_name, phone,city,street, house_no, zip) values ('MAKRO QORATOSH',1859305 ,'Tashkent', 'Qoratosh', 5, 100082);
insert into Branch(branch_name, phone,city,street, house_no, zip) values ('MAKRO GLINKA',1859305 ,'Tashkent', 'Nuks', 83, 100082);
insert into Branch(branch_name, phone,city,street, house_no, zip) values ('MAKRO CHILANZAR',1859305 ,'Tashkent', 'Chilonzor', 55, 100082);
insert into Branch(branch_name, phone,city,street, house_no, zip) values ('MAKRO QORAQAMISH',1859305 ,'Tashkent', 'Qoraqamish', 1, 100082);

--Supplier(supplier_id, company_name, phone, city, street, house_no, zip)
--PK: supplier_id
insert into Supplier(company_name,phone,city,street, house_no,zip) values ('AIR-PROM-TECHNOLOGY LLC', 2344677, 'Tashkent', 'BODOMZOR YULI', 48, 100084);
insert into Supplier(company_name,phone,city,street, house_no,zip) values ('EKO ELEKTRON BRANCH', 2914205, 'Tashkent', 'YANGI ZAMON', 86, 100105);
insert into Supplier(company_name,phone,city,street, house_no,zip) values ('AAA GROUP LLC', 2670001, 'Tashkent', 'MIRZO-ULUGBEK', 42, 100105);
insert into Supplier(company_name,phone,city,street, house_no,zip) values ('AGRO KONTINENT LLC', 1276958, 'Tashkent', ' BAKHOR ', 13, 100034);
insert into Supplier(company_name,phone,city,street, house_no,zip) values ('CHINOR PRIVATE FIRM', 6292168, 'Tashkent', ' AMIR TEMUR ', 22, 100034);
insert into Supplier(company_name,phone,city,street, house_no,zip) values ('KOLBERG DISTRIBUTION LLC', 2816853, 'Tashkent', ' ZIROAT', 1, 100083);

--StaffShift(shift_id, shift_type
--PK:shift_id
insert into StaffShift(shift_type) values ('morning');
insert into StaffShift(shift_type) values ('afternoon');

--Position (position_id, title, salary)
--PK: position 
insert into Position (title, salary) values ('Manager',3500);
insert into Position (title, salary) values ('Sales Manager',1500);
insert into Position (title, salary) values ('Sales Assistant',1000);
insert into Position (title, salary) values ('Inventory Manager',2200);
insert into Position (title, salary) values ('Inventory Clerk',1200);
insert into Position (title, salary) values ('Cashier',800);
insert into Position (title, salary) values ('Stocker',900);

--Electronics (electronics_id, product_name, product_description, price, amount_in_stock, warranty_in_months, supplier_id)
--PK: electronics_id
--FK: supplier_id references Supplier(supplier_id)
insert into Electronics(product_name,product_description,price,amount_in_stock,warranty_in_months,supplier_id) values('Brentwood','Juicer',45.00,10,12,1);
insert into Electronics(product_name,product_description,price,amount_in_stock,warranty_in_months,supplier_id) values('Oster','Blender',19.77,25,6,1);
insert into Electronics(product_name,product_description,price,amount_in_stock,warranty_in_months,supplier_id) values('RCA','Microvawe',64,39.99,18,1);
insert into Electronics(product_name,product_description,price,amount_in_stock,warranty_in_months,supplier_id) values('Samsung','TV',140,10,12,2);
insert into Electronics(product_name,product_description,price,amount_in_stock,warranty_in_months,supplier_id) values('Samsung','Refrigerator',200,20,12,2);
insert into Electronics(product_name,product_description,price,amount_in_stock,warranty_in_months,supplier_id) values('LG','Gas',200,20,12,1);
insert into Electronics(product_name,product_description,price,amount_in_stock,warranty_in_months,supplier_id) values('LG','Coffee Machine',200,20,12,1);
insert into Electronics(product_name,product_description,price,amount_in_stock,warranty_in_months,supplier_id) values('TEFAL','Kettle',200,20,12,2);
insert into Electronics(product_name,product_description,price,amount_in_stock,warranty_in_months,supplier_id) values('TEFAL','Gas',200,20,12,2);
insert into Electronics(product_name,product_description,price,amount_in_stock,warranty_in_months,supplier_id) values('Keurig','Mixer',200,20,12,2);

--DailyProducts (dailyp_id, product_name, product_description, price, amount_in_stock, manufactured_date, expiration_date, supplier_id)
--PK: product_id
--FK: supplier_id references Supplier(supplier_id)
insert into DailyProducts(product_name,product_description,price,amount_in_stock,manufactured_date, expiration_date,supplier_id) values('Angels food','Baton',1.50,50,'12-10-2016','12-25-2016',3);
insert into DailyProducts(product_name,product_description,price,amount_in_stock,manufactured_date, expiration_date,supplier_id) values('Multifood','Baton',1.20,90,'12-12-2016','12-22-2016',3);
insert into DailyProducts(product_name,product_description,price,amount_in_stock,manufactured_date, expiration_date,supplier_id) values('Vivo','Yoghurt 1L',1.90,20,'12-12-2016','12-28-2016',3);
insert into DailyProducts(product_name,product_description,price,amount_in_stock,manufactured_date, expiration_date,supplier_id) values('Beef','Meat 1kg',12.50,60,'12-12-2016','12-29-2016',3);
insert into DailyProducts(product_name,product_description,price,amount_in_stock,manufactured_date, expiration_date,supplier_id) values('Chicken','Meat 1kg',9.90,30,'12-12-2016','12-29-2017',3);
insert into DailyProducts(product_name,product_description,price,amount_in_stock,manufactured_date, expiration_date,supplier_id) values('Mistral','Sugar 2kg',4.90,100,'12-12-2016','12-12-2018',4);
insert into DailyProducts(product_name,product_description,price,amount_in_stock,manufactured_date, expiration_date,supplier_id) values('Dunyo','Salt 500gr',2.20,40,'12-06-2016','12-12-2019',4);
insert into DailyProducts(product_name,product_description,price,amount_in_stock,manufactured_date, expiration_date,supplier_id) values('Alakazay','Black Tea 100p',2.50,115,'12-08-2016','12-07-2018',4);
insert into DailyProducts(product_name,product_description,price,amount_in_stock,manufactured_date, expiration_date,supplier_id) values('Nesquick','Chocolate milk',1,160,'12-06-2016','12-07-2017',4);
insert into DailyProducts(product_name,product_description,price,amount_in_stock,manufactured_date, expiration_date,supplier_id) values('Nescafe Classic','Instant coffe 250 gr',9.30,120,'12-06-2016','12-07-2017',4);

--OtherProducts (otherp_id, product_name, product_description, price, amount_in_stock, supplier_id)
--PK: product_id
--FK: supplier_id references Supplier(supplier_id)
insert into OtherProducts(product_name,product_description,price,amount_in_stock,supplier_id) values('BABY NOVA','Baby feeding bottle',7.90,200,5);
insert into OtherProducts(product_name,product_description,price,amount_in_stock,supplier_id) values('Selen','Tissue',2.50,100,5);
insert into OtherProducts(product_name,product_description,price,amount_in_stock,supplier_id) values('Zewa','Toilet paper 6p',1.90,850,5);
insert into OtherProducts(product_name,product_description,price,amount_in_stock,supplier_id) values('SG','Dust rag ',0.90,200,5);
insert into OtherProducts(product_name,product_description,price,amount_in_stock,supplier_id) values('Gilette','Razor',1.25,100,5);
insert into OtherProducts(product_name,product_description,price,amount_in_stock,supplier_id) values('Colgate','Toothbrush',1.20,130,5);
insert into OtherProducts(product_name,product_description,price,amount_in_stock,supplier_id) values('Mainstrays','Shower curtain',11.90,200,5);
insert into OtherProducts(product_name,product_description,price,amount_in_stock,supplier_id) values('Dixie','Coffe cup',1.85,60,6);
insert into OtherProducts(product_name,product_description,price,amount_in_stock,supplier_id) values('Rio','Drinkwere 6 set',13.90,40,6);
insert into OtherProducts(product_name,product_description,price,amount_in_stock,supplier_id) values('Corelle','Plate',1.45,100,6);

--Staff (staff_id, first_name, last_name, dob, phone, city, street, house_no, zip, position, salary, branch_id)
--PK: staff_id
--FK: branch_id
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Alisher', 'Qurbonov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,1,1);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Qodir', 'Rustamov', '1-2-1970','Tashkent', 'Shaxrisabz', 34, 100056,1,2);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Ravshan', 'Nizomiddinov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,1,3);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Nargiza', 'Abdullayeva', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,1,4);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Adiba', 'Qurbonova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,1,5);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Adham', 'Rustamov', '1-2-1970', 'Tashkent', 'Shaxrisabz', 34, 100056,1,6);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Akbar', 'Nizomiddinov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,1,7);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Azamat', 'Abdullayev', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,1,8);

insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Azamat', 'Botirov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,2,1);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Bahodir', 'Oripov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,2,2);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Dilafruz', 'Mahsudova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,2,3);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Diora', 'Zumarova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,2,4);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Dior', 'Botirov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,2,5);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Dilyor', 'Oripov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,2,6);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Elina', 'Mahsudova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,2,7);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Fotima', 'Zumarova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,2,8);

insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Iroda', 'Qurbonova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,1);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Izzat', 'Rustamov', '1-2-1970', 'Tashkent', 'Shaxrisabz', 34, 100056,3,2);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Jafar', 'Nizomiddinov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,3);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Kamola', 'Abdullayeva', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,4);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Karina', 'Botirova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,5);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Laila', 'Oripova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,6);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Luiza', 'Mahsudova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,7);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Madina', 'Zumarova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,8);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Malika', 'Qurbonova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,1);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Mardon', 'Rustamov', '1-2-1970','Tashkent', 'Shaxrisabz', 34, 100056,3,2);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Muhammadali', 'Nizomiddinov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,3);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Matluba', 'Abdullayeva', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,4);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Mubina', 'Botirova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,5);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Nargiza', 'Oripova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,6);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Narimon', 'Mahsudov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,7);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Nozima', 'Zumarova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,3,8);

insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Saodat', 'Qurbonova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,1);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Komil', 'Rustamov', '1-2-1970','Tashkent', 'Shaxrisabz', 34, 100056,5,1);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Dilshod', 'Nizomiddinov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,2);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Zarina', 'Abdullayeva', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,2);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Zulfizar', 'Botirova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,3);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Madina', 'Oripova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,3);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Dilfuza', 'Mahsudova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,4);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Dilobar', 'Zumarova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,4);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Mavluda', 'Qurbonova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,5);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Shoxrux', 'Rustamov', '1-2-1970', 'Tashkent', 'Shaxrisabz', 34, 100056,5,5);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Doniyor', 'Nizomiddinov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,6);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Mohigul', 'Abdullayeva', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,6);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Guli', 'Botirova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,7);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Muborak', 'Oripova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,7);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Dilshoda', 'Mahsudova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,8);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Akram', 'Zumarova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,5,8);

insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Muqaddas', 'Qurbonova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,4,1);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Zarif', 'Rustamov', '1-2-1970', 'Tashkent', 'Shaxrisabz', 34, 100056,4,2);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Uktam', 'Nizomiddinov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,4,3);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Shahlo', 'Abdullayeva', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,4,4);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Dilafruz', 'Botirova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,4,5);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Sarvinoz', 'Oripova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,4,6);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Laziza', 'Mahsudova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,4,7);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Charos', 'Zumarova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,4,8);

insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Zarina', 'Qurbonova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,1);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Ahmad', 'Rustamov', '1-2-1970', 'Tashkent', 'Shaxrisabz', 34, 100056,6,1);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Shahob', 'Nizomiddinov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,2);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Amina', 'Abdullayeva', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,2);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Maftuna', 'Botirova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,3);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Nozima', 'Oripova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,3);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Dilbar', 'Mahsudova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,4);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Nasiba', 'Zumarova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,4);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Munisa', 'Qurbonova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,5);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Rashid', 'Rustamov', '1-2-1970', 'Tashkent', 'Shaxrisabz', 34, 100056,6,5);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Akmal', 'Nizomiddinov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,6);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Ilhom', 'Abdullayeva', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,6);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Sarvinoz', 'Botirova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,7);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Karomat', 'Oripova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,7);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Olim', 'Mahsudov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,8);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Dilafruz', 'Zumarova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,6,8);

insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Qunduz', 'Akramova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,1);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Vohid', 'Rustamov', '1-2-1970', 'Tashkent', 'Shaxrisabz', 34, 100056,7,1);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Zokir', 'Nizomiddinov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,2);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Valeriya', 'Abdullayeva', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,2);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Tanya', 'Botirova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,3);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Risolat', 'Oripova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,3);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Saodat', 'Mahsudova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,4);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Aziza', 'Zumarova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,4);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Bahor', 'Qurbonova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,5);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Donyor', 'Rustamov', '1-2-1970', 'Tashkent', 'Shaxrisabz', 34, 100056,7,5);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Zafar', 'Nizomiddinov', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,6);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Iroda', 'Abdullayeva', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,6);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Anora', 'Botirova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,7);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Oisha', 'Oripova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,7);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Honzoda', 'Mahsudova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,8);
insert into Staff(first_name, last_name, dob, city, street, house_no, zip, position_id, staff_branch) values ('Madina', 'Zumarova', '1-2-1980', 'Tashkent', 'Shaxrisabz', 34, 100056,7,8);


--Phone (staff_id, phone)
--PK: staff_id
insert into Phone(staff_id,phone) values (1, 1234567);
insert into Phone(staff_id,phone) values (2, 1234567);
insert into Phone(staff_id,phone) values (3, 1234567);
insert into Phone(staff_id,phone) values (4, 1234567);
insert into Phone(staff_id,phone) values (5, 1234567);
insert into Phone(staff_id,phone) values (6, 1234567);
insert into Phone(staff_id,phone) values (7, 1234567);
insert into Phone(staff_id,phone) values (8, 1234567);
insert into Phone(staff_id,phone) values (9, 1234567);
insert into Phone(staff_id,phone) values (10, 1234567);
insert into Phone(staff_id,phone) values (11, 1234567);
insert into Phone(staff_id,phone) values (12, 1234567);
insert into Phone(staff_id,phone) values (13, 1234567);
insert into Phone(staff_id,phone) values (14, 1234567);
insert into Phone(staff_id,phone) values (15, 1234567);
insert into Phone(staff_id,phone) values (16, 1234567);
insert into Phone(staff_id,phone) values (17, 1234567);
insert into Phone(staff_id,phone) values (18, 1234567);
insert into Phone(staff_id,phone) values (19, 1234567);
insert into Phone(staff_id,phone) values (20, 1234567);
insert into Phone(staff_id,phone) values (21, 1234567);
insert into Phone(staff_id,phone) values (22, 1234567);
insert into Phone(staff_id,phone) values (23, 1234567);
insert into Phone(staff_id,phone) values (24, 1234567);
insert into Phone(staff_id,phone) values (25, 1234567);

--Manger (staff_id, bonus, manage_branch_id)
--PK: staff_id
--FK: manage_branch_id references Branch(branch_id)
insert into Manager(staff_id,bonus, manage_branch_id) values (1,500,1);
insert into Manager(staff_id,bonus, manage_branch_id) values (2,2000,2);
insert into Manager(staff_id,bonus, manage_branch_id) values (3,600,3);
insert into Manager(staff_id,bonus, manage_branch_id) values (4,200,4);
insert into Manager(staff_id,bonus, manage_branch_id) values (5,1400,5);
insert into Manager(staff_id,bonus, manage_branch_id) values (6,2200,6);
insert into Manager(staff_id,bonus, manage_branch_id) values (7,1600,7);
insert into Manager(staff_id,bonus, manage_branch_id) values (8,2000,8
);

--SalesStaff(staff_id, supervisor_id, shift_id)
--FK: staff_id references SalesStaff(staff_id)
--FK: supervisor_id references Sales Staff(staff_id)
--FK: shift_id references Shift(shift_id)
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (9,null,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (10,null,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (11,null,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (12,null,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (13,null,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (14,null,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (15,null,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (16,null,1);

insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (17,9,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (18,9,2);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (19,10,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (20,10,2);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (21,16,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (22,11,2);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (23,11,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (24,12,2);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (25,12,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (26,13,2);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (27,13,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (28,14,2);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (29,14,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (30,15,2);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (31,15,1);
insert into SalesStaff(staff_id,staff_supervisor,staff_shift) values (32,16,2);

--InventoryStaff(staff_id, supervisor_id)
--FK: staff_id references Staff(staff_id)
--FK: supervisor_id references Inventory Staff(staff_id)
insert into InventoryStaff(staff_id, supervisor_id) values (49,null);
insert into InventoryStaff(staff_id, supervisor_id) values (50,null);
insert into InventoryStaff(staff_id, supervisor_id) values (51,null);
insert into InventoryStaff(staff_id, supervisor_id) values (52,null);
insert into InventoryStaff(staff_id, supervisor_id) values (53,null);
insert into InventoryStaff(staff_id, supervisor_id) values (54,null);
insert into InventoryStaff(staff_id, supervisor_id) values (55,null);
insert into InventoryStaff(staff_id, supervisor_id) values (56,null);

insert into InventoryStaff(staff_id, supervisor_id) values (33,49);
insert into InventoryStaff(staff_id, supervisor_id) values (34,50);
insert into InventoryStaff(staff_id, supervisor_id) values (35,51);
insert into InventoryStaff(staff_id, supervisor_id) values (36,52);
insert into InventoryStaff(staff_id, supervisor_id) values (37,53);
insert into InventoryStaff(staff_id, supervisor_id) values (38,54);
insert into InventoryStaff(staff_id, supervisor_id) values (39,55);
insert into InventoryStaff(staff_id, supervisor_id) values (40,56);
insert into InventoryStaff(staff_id, supervisor_id) values (41,49);
insert into InventoryStaff(staff_id, supervisor_id) values (42,50);
insert into InventoryStaff(staff_id, supervisor_id) values (43,51);
insert into InventoryStaff(staff_id, supervisor_id) values (44,52);
insert into InventoryStaff(staff_id, supervisor_id) values (45,53);
insert into InventoryStaff(staff_id, supervisor_id) values (46,54);
insert into InventoryStaff(staff_id, supervisor_id) values (47,55);
insert into InventoryStaff(staff_id, supervisor_id) values (48,56);

--Orders (order_id, staff_id, electronics_id, dailyp_id, otherp_id,supplier_id, order_date, order_amount)
--PK: order_id
--FK: staff_id references Staff(staff_id)
--FK: electronics_id references Electronics(electronics_id)
--FK: dailyp_id references DailyProducts	(dailyp_id)
--FK: otherp_id references OtherProduct(otherp_id)
--FK: supplier_id references Supplier(supplier_id)
insert into Orders(staff_id,electronics_id, dailyp_id, otherp_id, supplier_id,order_amount,order_date) values (9, 1, null,null, 2,10,'3-11-2016');
insert into Orders(staff_id,electronics_id, dailyp_id, otherp_id, supplier_id,order_amount,order_date) values (10, null, 2,null, 4,10,'9-6-2016');
insert into Orders(staff_id,electronics_id, dailyp_id, otherp_id, supplier_id,order_amount,order_date) values (11, null, null,1, 5,10,'10-6-2016');
insert into Orders(staff_id,electronics_id, dailyp_id, otherp_id, supplier_id,order_amount,order_date) values (9, null, 2,null, 3,10,'3-9-2016');
insert into Orders(staff_id,electronics_id, dailyp_id, otherp_id, supplier_id,order_amount,order_date) values (9, null, null,1, 6,10,'3-8-2016');


--Sales (sales_id, branch_id, staff_id, electronics_id,dailyp_id,otherp_id, sale_amount, sale_date)
--PK: sales_id
--FK: branch_id references Branch(branch_id)
--FK: staff_id references Staff(staff_id)
--FK: electronics_id references Electronics(electronics_id)
--FK: dailyp_id references DailyProducts(dailyp_id)
--FK: otherp_id references OtherProduct(otherp_id)
insert into Sales (branch_id, staff_id, electronics_id, dailyp_id,otherp_id,sale_amount, sale_date) values (1, 3, 1, null,null,5, '12-6-2016');
insert into Sales (branch_id, staff_id, electronics_id, dailyp_id,otherp_id,sale_amount, sale_date) values (1, 4, 4, null,null,10, '12-6-2016');
insert into Sales (branch_id, staff_id, electronics_id, dailyp_id,otherp_id,sale_amount, sale_date) values (1, 4, 1, null,null,8, '12-6-2016');
insert into Sales (branch_id, staff_id, electronics_id, dailyp_id,otherp_id,sale_amount, sale_date) values (1, 5, null, 6,null,20, '12-6-2016');
insert into Sales (branch_id, staff_id, electronics_id, dailyp_id,otherp_id,sale_amount, sale_date) values (1, 5, null, 4,null,8, '12-6-2016');
insert into Sales (branch_id, staff_id, electronics_id, dailyp_id,otherp_id,sale_amount, sale_date) values (1, 3, 7, null,null,5, '12-6-2016');
insert into Sales (branch_id, staff_id, electronics_id, dailyp_id,otherp_id,sale_amount, sale_date) values (1, 6, null, null,4,5, '12-6-2016');
insert into Sales (branch_id, staff_id, electronics_id, dailyp_id,otherp_id,sale_amount, sale_date) values (1, 3, null, 2,null,2, '12-6-2016');
insert into Sales (branch_id, staff_id, electronics_id, dailyp_id,otherp_id,sale_amount, sale_date) values (1, 4, null, 3,null,4, '12-6-2016');
insert into Sales (branch_id, staff_id, electronics_id, dailyp_id,otherp_id,sale_amount, sale_date) values (1, 3, 1, null,null,9, '12-6-2016');
