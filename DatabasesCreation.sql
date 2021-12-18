CREATE SCHEMA IF NOT EXISTS fly AUTHORIZATION postgres;
CREATE SCHEMA IF NOT EXISTS hotel AUTHORIZATION postgres;
CREATE SCHEMA IF NOT EXISTS account AUTHORIZATION postgres;

DROP TABLE IF EXISTS fly.booking;
DROP TABLE IF EXISTS hotel.booking;
DROP TABLE IF EXISTS account.balance;

CREATE TABLE fly.Booking (
	BookingID  serial primary key,
	OrderID char(12) unique,
	ClientName varchar (255) not null,
	FlyNumber varchar(10) not null,
	FromIATA char(3) not null,
	ToIATA char(3) not null,
	Date date not null
);

CREATE TABLE hotel.Booking (
	BookingID  serial primary key,
	OrderID char(12) unique,
	ClientName varchar (255) not null,
	HotelName varchar(255) not null,
	Arrival date not null,
	Departure date not null
);

CREATE TABLE account.balance (
	AccountID  serial primary key,
	ClientName varchar (255) not null,
	Amount decimal(15,2) CHECK (Amount >= 0)
) ;

INSERT INTO account.balance (ClientName, Amount)  VALUES ('Nik', 200);