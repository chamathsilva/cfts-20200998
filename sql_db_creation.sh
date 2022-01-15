kubectl run -it --rm --image=mysql:5.7.22 --restart=Never mysql-client -- mysql -h coinbase-database.cau9n3cvqgxd.us-east-1.rds.amazonaws.com -u dbadmin -pdbpassword11


# create database
CREATE DATABASE `coinbase_db`;

USE coinbase_db;

# -- coinbase_db.exchange_rate definition

CREATE TABLE `exchange_rate` (
  `exchange_rate_id` int NOT NULL AUTO_INCREMENT,
  `coin` varchar(100) NOT NULL,
  `value` decimal(10,4) NOT NULL,
  PRIMARY KEY (`exchange_rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

# -- coinbase_db.`transaction` definition

CREATE TABLE `transaction` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `coin` varchar(100) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `user_id` int NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;