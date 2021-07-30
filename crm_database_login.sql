CREATE DATABASE IF NOT EXISTS crm;
USE crm;
CREATE TABLE IF NOT EXISTS role(
	id int(10),
    name varchar(255) not null,
    description varchar(255),
    primary key(id)
);

CREATE TABLE IF NOT EXISTS user(
	id int(10),
    email varchar(255) unique,
    password varchar(255) not null,
    name varchar(255) not null,
    address varchar(255),
    phone varchar(50),
    role_id int(10),
    primary key(id)
);

ALTER TABLE user ADD CONSTRAINT FK_USER_ROLE FOREIGN KEY (role_id) REFERENCES role (id);

INSERT INTO `crm`.`role` (`id`, `name`) VALUES ('1', 'admin');
INSERT INTO `crm`.`role` (`id`, `name`) VALUES ('2', 'leader');
INSERT INTO `crm`.`user` (`id`, `email`, `password`, `name`, `address`, `phone`, `role_id`) VALUES ('1', 'admin@gmail.com', '1234', 'Nguyen Van A', 'Binh Thanh', '033123213', '1');
INSERT INTO `crm`.`user` (`id`, `email`, `password`, `name`, `address`, `phone`, `role_id`) VALUES ('2', 'nhattan87264@gmail.com', '1234', 'Duong Nhat Tan', 'Binh Duong', '0333816363', '2');
