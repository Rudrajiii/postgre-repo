create table vehicle (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    make VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    price NUMERIC(19,2) NOT NULL
);

create table people (
    id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(20) NOT NULL,
	email VARCHAR(150),
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
    vehicle_id BIGINT REFERENCES vehicle(id),
    UNIQUE(vehicle_id)
);



insert into people (first_name,
                    last_name,
                    gender,
                    email,
                    date_of_birth,
                    country_of_birth) values ('Rudra',
                                              'Saha',
                                              'Male',
                                              'xxx@gmail.com',
                                              '2024-12-10',
                                              'India');
insert into people (first_name,
                    last_name,
                    gender,
                    email,
                    date_of_birth,
                    country_of_birth) values ('Rudrani',
                                              'Sinha',
                                              'Female',
                                              null,
                                              '2021-12-01',
                                              'India');
insert into people (first_name,
                    last_name,
                    gender,
                    email,
                    date_of_birth,
                    country_of_birth) values ('Vikram',
                                              'Aditya',
                                              'Male',
                                              'xnxx@gmail.com',
                                              '2025-12-12',
                                              'India');
insert into vehicle (make,
                    model,
                    price) values ('Land Rover' ,
                                   'Sterling',
                                   '87665.38');
insert into vehicle (make,
                    model,
                    price) values ('GMC' ,
                                   'Acadia',
                                   '17662.69');



