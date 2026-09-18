BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "customers" (
	"customer_id"	INTEGER,
	"customer_name"	TEXT,
	"city"	TEXT,
	"state"	TEXT,
	PRIMARY KEY("customer_id")
);
CREATE TABLE IF NOT EXISTS "order_details" (
	"order_detail_id"	INTEGER,
	"order_id"	INTEGER,
	"product_id"	INTEGER,
	"quantity"	INTEGER,
	PRIMARY KEY("order_detail_id"),
	FOREIGN KEY("order_id") REFERENCES "orders"("order_id"),
	FOREIGN KEY("product_id") REFERENCES "products"("product_id")
);
CREATE TABLE IF NOT EXISTS "orders" (
	"order_id"	INTEGER,
	"customer_id"	INTEGER,
	"order_date"	TEXT,
	PRIMARY KEY("order_id"),
	FOREIGN KEY("customer_id") REFERENCES "customers"("customer_id")
);
CREATE TABLE IF NOT EXISTS "products" (
	"product_id"	INTEGER,
	"product_name"	TEXT,
	"category"	TEXT,
	"price"	REAL,
	PRIMARY KEY("product_id")
);
INSERT INTO "customers" VALUES (1,'Rahul Sharma','Mumbai','Maharashtra');
INSERT INTO "customers" VALUES (2,'Priya Patel','Ahmedabad','Gujarat');
INSERT INTO "customers" VALUES (3,'Aman Verma','Delhi','Delhi');
INSERT INTO "customers" VALUES (4,'Sneha Iyer','Bengaluru','Karnataka');
INSERT INTO "customers" VALUES (5,'Rohan Mehta','Pune','Maharashtra');
INSERT INTO "customers" VALUES (6,'Neha Singh','Jaipur','Rajasthan');
INSERT INTO "customers" VALUES (7,'Arjun Rao','Hyderabad','Telangana');
INSERT INTO "customers" VALUES (8,'Kavya Nair','Kochi','Kerala');
INSERT INTO "customers" VALUES (9,'Vikram Joshi','Indore','Madhya Pradesh');
INSERT INTO "customers" VALUES (10,'Ananya Das','Kolkata','West Bengal');
INSERT INTO "order_details" VALUES (1,101,1,2);
INSERT INTO "order_details" VALUES (2,101,7,3);
INSERT INTO "order_details" VALUES (3,102,2,1);
INSERT INTO "order_details" VALUES (4,102,10,2);
INSERT INTO "order_details" VALUES (5,103,5,1);
INSERT INTO "order_details" VALUES (6,103,6,2);
INSERT INTO "order_details" VALUES (7,104,3,2);
INSERT INTO "order_details" VALUES (8,104,9,1);
INSERT INTO "order_details" VALUES (9,105,4,1);
INSERT INTO "order_details" VALUES (10,105,8,3);
INSERT INTO "order_details" VALUES (11,106,1,1);
INSERT INTO "order_details" VALUES (12,106,10,1);
INSERT INTO "order_details" VALUES (13,107,2,2);
INSERT INTO "order_details" VALUES (14,107,3,1);
INSERT INTO "order_details" VALUES (15,108,5,1);
INSERT INTO "order_details" VALUES (16,108,9,2);
INSERT INTO "order_details" VALUES (17,109,6,2);
INSERT INTO "order_details" VALUES (18,109,7,5);
INSERT INTO "order_details" VALUES (19,110,4,2);
INSERT INTO "order_details" VALUES (20,110,8,1);
INSERT INTO "order_details" VALUES (21,111,10,2);
INSERT INTO "order_details" VALUES (22,111,1,1);
INSERT INTO "order_details" VALUES (23,112,2,1);
INSERT INTO "order_details" VALUES (24,112,4,1);
INSERT INTO "order_details" VALUES (25,113,5,1);
INSERT INTO "order_details" VALUES (26,113,6,1);
INSERT INTO "order_details" VALUES (27,114,3,3);
INSERT INTO "order_details" VALUES (28,114,7,4);
INSERT INTO "order_details" VALUES (29,115,9,1);
INSERT INTO "order_details" VALUES (30,115,10,1);
INSERT INTO "order_details" VALUES (31,116,1,2);
INSERT INTO "order_details" VALUES (32,116,8,2);
INSERT INTO "order_details" VALUES (33,117,2,1);
INSERT INTO "order_details" VALUES (34,117,6,2);
INSERT INTO "order_details" VALUES (35,118,5,1);
INSERT INTO "order_details" VALUES (36,118,4,1);
INSERT INTO "order_details" VALUES (37,119,3,2);
INSERT INTO "order_details" VALUES (38,119,9,1);
INSERT INTO "order_details" VALUES (39,120,10,3);
INSERT INTO "order_details" VALUES (40,120,7,2);
INSERT INTO "orders" VALUES (101,1,'2026-01-05');
INSERT INTO "orders" VALUES (102,2,'2026-01-08');
INSERT INTO "orders" VALUES (103,3,'2026-01-12');
INSERT INTO "orders" VALUES (104,4,'2026-01-15');
INSERT INTO "orders" VALUES (105,5,'2026-01-20');
INSERT INTO "orders" VALUES (106,6,'2026-01-25');
INSERT INTO "orders" VALUES (107,7,'2026-02-02');
INSERT INTO "orders" VALUES (108,8,'2026-02-07');
INSERT INTO "orders" VALUES (109,9,'2026-02-11');
INSERT INTO "orders" VALUES (110,10,'2026-02-15');
INSERT INTO "orders" VALUES (111,1,'2026-02-20');
INSERT INTO "orders" VALUES (112,3,'2026-02-24');
INSERT INTO "orders" VALUES (113,5,'2026-03-01');
INSERT INTO "orders" VALUES (114,7,'2026-03-05');
INSERT INTO "orders" VALUES (115,9,'2026-03-10');
INSERT INTO "orders" VALUES (116,2,'2026-03-15');
INSERT INTO "orders" VALUES (117,4,'2026-03-20');
INSERT INTO "orders" VALUES (118,6,'2026-03-25');
INSERT INTO "orders" VALUES (119,8,'2026-03-28');
INSERT INTO "orders" VALUES (120,10,'2026-03-30');
INSERT INTO "products" VALUES (1,'Wireless Mouse','Electronics',799.0);
INSERT INTO "products" VALUES (2,'Mechanical Keyboard','Electronics',2499.0);
INSERT INTO "products" VALUES (3,'USB-C Hub','Electronics',1299.0);
INSERT INTO "products" VALUES (4,'Laptop Stand','Accessories',1499.0);
INSERT INTO "products" VALUES (5,'Office Chair','Furniture',8999.0);
INSERT INTO "products" VALUES (6,'Desk Lamp','Furniture',1999.0);
INSERT INTO "products" VALUES (7,'Notebook','Stationery',199.0);
INSERT INTO "products" VALUES (8,'Water Bottle','Lifestyle',599.0);
INSERT INTO "products" VALUES (9,'Backpack','Accessories',1799.0);
INSERT INTO "products" VALUES (10,'Headphones','Electronics',2999.0);
COMMIT;
