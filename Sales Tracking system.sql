create database chirayufinal;
use chirayufinal;

CREATE TABLE users (
  id varchar(6) primary key,
  fullname varchar(30) NOT NULL,
  location varchar(50) NOT NULL,
  phone varchar(13) NOT NULL,
  username varchar(20) NOT NULL,
  password varchar(20) NOT NULL,
  category varchar(20) NOT NULL
) ;

CREATE TABLE suppliers (
  sid varchar(6) primary key,
  suppliercode varchar(6) NOT NULL,
  fullname varchar(30) NOT NULL,
  location varchar(30) NOT NULL,
  phone varchar(13) NOT NULL
) ;

CREATE TABLE salesreport (
  salesid varchar(6) primary key,
  date varchar(40) NOT NULL,
  productcode varchar(100) NOT NULL,
  customercode varchar(100) NOT NULL,
  quantity int(11) NOT NULL,
  revenue double NOT NULL,
  soldby varchar(50) NOT NULL,
  sid varchar(6),
  FOREIGN KEY (sid) REFERENCES suppliers(sid)
) ;

CREATE TABLE currentstocks (
  productcode varchar(6) primary key,
  quantity int(6) NOT NULL,
  sid varchar(6),
  FOREIGN KEY (sid) REFERENCES suppliers(sid)
) ;

CREATE TABLE products (
  pid varchar(6) primary key,
  productcode varchar(10) NOT NULL,
  productname varchar(30) NOT NULL,
  costprice double NOT NULL,
  sellingprice double NOT NULL,
  brand varchar(20) NOT NULL,
  pcode varchar(6),
  FOREIGN KEY (pcode) REFERENCES currentstocks(productcode),
  sid varchar(6),
  FOREIGN KEY (sid) REFERENCES suppliers(sid)
) ;

ALTER TABLE products
ADD cid varchar(6);

ALTER TABLE products
ADD FOREIGN KEY (cid) REFERENCES customers(cid);

CREATE TABLE customers (
  cid varchar(6) primary key,
  customercode varchar(10) NOT NULL,
  fullname varchar(30) NOT NULL,
  location varchar(50) NOT NULL,
  phone varchar(13) NOT NULL,
  id varchar(6),
  FOREIGN KEY (id) REFERENCES users(id),
  pid varchar(6),
  FOREIGN KEY (pid) REFERENCES products(pid)
) ;

CREATE TABLE purchaseinfo (
  purchaseid varchar(6) primary key,
  suppliercode varchar(10) NOT NULL,
  productcode varchar(10) NOT NULL,
  date DATE NOT NULL,
  quantity int(6) NOT NULL,
  totalcost double NOT NULL,
  cid varchar(6),
  FOREIGN KEY (cid) REFERENCES customers(cid)
) ;

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin' ;
grant  select  on  *.*  to  'admin'@'localhost'  ;

CREATE USER 'customer'@'localhost' IDENTIFIED BY 'customer' ;
GRANT select, insert, update, delete   ON chirayufinal.customers  TO 'customer'@'localhost' ;

CREATE USER 'seller'@'localhost' IDENTIFIED BY 'seller' ;
GRANT select,insert, update, delete   ON chirayufinal.products  TO 'seller'@'localhost' ;

CREATE USER 'supplier'@'localhost' IDENTIFIED BY 'supplier' ;
GRANT select,insert, update, delete   ON chirayufinal.currentstocks  TO 'supplier'@'localhost' ;






