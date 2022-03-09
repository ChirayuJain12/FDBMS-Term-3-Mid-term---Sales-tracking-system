
Table structure for table `currentstocks`
--

CREATE TABLE currentstocks (
  productcode varchar(100) primary key,
  quantity int(11) NOT NULL
) ;

--
-- Dumping data for table `currentstocks`
--

INSERT INTO currentstocks (productcode, quantity) VALUES ('p2',30);

INSERT INTO currentstocks (productcode, quantity) VALUES('p1', 1);
INSERT INTO currentstocks (productcode, quantity) VALUES('p10', 0);
INSERT INTO currentstocks (productcode, quantity) VALUES('prod1', 0);
INSERT INTO currentstocks (productcode, quantity) VALUES('prod2', 10);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE customers (
  cid int(11) primary key,
  customercode varchar(100) NOT NULL,
  fullname varchar(50) NOT NULL,
  location varchar(50) NOT NULL,
  phone varchar(50) NOT NULL
) ;

--
-- Dumping data for table `customers`
--

INSERT INTO customers (cid, customercode, fullname, location, phone) VALUES
(2, 'cus3', 'ram', 'ktm', '331');

-- --------------------------------------------------------

--
-- Table structure for table products
--

CREATE TABLE products (
  pid int(11) primary key,
  productcode varchar(100) NOT NULL,
  productname varchar(50) NOT NULL,
  costprice double NOT NULL,
  sellingprice double NOT NULL,
  brand varchar(50) NOT NULL
) ;

--
-- Dumping data for table `products`
--

INSERT INTO products (pid, productcode, productname, costprice, sellingprice, brand) VALUES (73, 'prod3', 'qq', 3, 2, '4d');
INSERT INTO products (pid, productcode, productname, costprice, sellingprice, brand) VALUES (72, 'prod2', 'pen', 20, 30, 'techno');
INSERT INTO products (pid, productcode, productname, costprice, sellingprice, brand) VALUES (71, 'prod1', 'wai wai', 400, 450, 'cg');
INSERT INTO products (pid, productcode, productname, costprice, sellingprice, brand) VALUES (74, 'prod4', 'wai wai', 400, 450, 'cg2');
INSERT INTO products (pid, productcode, productname, costprice, sellingprice, brand) VALUES (78, 'prod5', 'Mobile', 500, 700, 'cg');

-- --------------------------------------------------------

--
-- Table structure for table purchaseinfo
--

CREATE TABLE purchaseinfo (
  purchaseid int(11) primary key,
  suppliercode varchar(200) NOT NULL,
  productcode varchar(200) NOT NULL,
  date varchar(200) NOT NULL,
  quantity int(11) NOT NULL,
  totalcost double NOT NULL
) ;

--
-- Dumping data for table purchaseinfo
--

INSERT INTO purchaseinfo (purchaseid, suppliercode, productcode, date, quantity, totalcost) VALUES (19, 's1', 'p2', 'Wed Jan 14 00:15:19', 40, 1320);
INSERT INTO purchaseinfo (purchaseid, suppliercode, productcode, date, quantity, totalcost) VALUES(20, 's1', 'p1', 'Wed Jan 07 16:42:44', 4, 80000);
INSERT INTO purchaseinfo (purchaseid, suppliercode, productcode, date, quantity, totalcost) VALUES (21, 's6', 'p10', 'Tue Jan 06 16:51:44', 20, 400000);
INSERT INTO purchaseinfo (purchaseid, suppliercode, productcode, date, quantity, totalcost) VALUES (22, 'sup4', 'prod1', 'Thu Jan 15 15:25:45 ', 4, 1600);
INSERT INTO purchaseinfo (purchaseid, suppliercode, productcode, date, quantity, totalcost) VALUES (23, 'sup5', 'prod1', 'Thu Jan 15 00:00:00 ', 6, 2400);
INSERT INTO purchaseinfo (purchaseid, suppliercode, productcode, date, quantity, totalcost) VALUES(29, 'sup4', 'prod2', 'Fri Jan 16 23:09:17 ', 5, 1500);

-- --------------------------------------------------------

--
-- Table structure for table salesreport
--

CREATE TABLE salesreport (
  salesid int(11) primary key,
  date varchar(40) NOT NULL,
  productcode varchar(100) NOT NULL,
  customercode varchar(100) NOT NULL,
  quantity int(11) NOT NULL,
  revenue double NOT NULL,
  soldby varchar(50) NOT NULL
) ;

--
-- Dumping data for table salesreport
--

INSERT INTO salesreport (salesid, date, productcode, customercode, quantity, revenue, soldby) VALUES (1, 'Fri Jan 16 23:12:40  ', 'prod2', 'cus3', 4, 120, 'user4');
INSERT INTO salesreport (salesid, date, productcode, customercode, quantity, revenue, soldby) VALUES (2, 'Thu Jan 08 21:30:51  ', 'prod1', 'cus3', 5, 2250, 'sazanrjb');
INSERT INTO salesreport (salesid, date, productcode, customercode, quantity, revenue, soldby) VALUES(3, 'Thu Jan 15 21:26:47  ', 'prod1', 'cus3', 5, 2250, 'sazanrjb');
INSERT INTO salesreport (salesid, date, productcode, customercode, quantity, revenue, soldby) VALUES(4, 'Sat Jan 17 10:08:20 ', 'prod3', 'cus3', 1, 2, 'user4');

-- --------------------------------------------------------

--
-- Table structure for table suppliers
--

CREATE TABLE suppliers (
  sid int(11) primary key,
  suppliercode varchar(100) NOT NULL,
  fullname varchar(50) NOT NULL,
  location varchar(50) NOT NULL,
  phone varchar(10) NOT NULL
) ;

--
-- Dumping data for table suppliers
--

INSERT INTO suppliers (sid, suppliercode, fullname, location, phone) VALUES
(69, 'sup5', 'manish', 'ktm', '4123372');
INSERT INTO suppliers (sid, suppliercode, fullname, location, phone) VALUES(68, 'sup4', 'sia', 'US', '11623231');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE users (
  id int(11) primary key,
  fullname varchar(50) NOT NULL,
  location varchar(50) NOT NULL,
  phone varchar(10) NOT NULL,
  username varchar(20) NOT NULL,
  password varchar(200) NOT NULL,
  category varchar(20) NOT NULL
) ;

--
-- Dumping data for table users
--

INSERT INTO users (id, fullname, location, phone, username, password, category) VALUES
(54, 'Sajan Rajbhandari', 'Pokhara', '9849284991', 'user4', 'cc03e747a6afbbcbf8be7668acfebee5', 'ADMINISTRATOR');

INSERT INTO users (id, fullname, location, phone, username, password, category) VALUES(56, 'Ram', 'Kathmandu', '9849284991', 'user5', 'a791842f52a0acfbb3a783378c066b8', 'NORMAL USER');

INSERT INTO users (id, fullname, location, phone, username, password, category) VALUES(57, 'shyam', 'ktm', '98239832', 'user6', 'affec3b64cf90492377a8114c86fc093', 'NORMAL USER');

--
