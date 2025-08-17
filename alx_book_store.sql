CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR (215) NOT NULL
);

-- Create customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215),
    address TEXT
);

-- Create books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    publication_date DATE,
    price DOUBLE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)

);

-- Create order_details table
CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    FOREIGN KEY (book_id) REFERENCES Books (book_id)
);