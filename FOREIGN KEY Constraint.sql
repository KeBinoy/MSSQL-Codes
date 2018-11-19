CREATE TABLE orders (
    order_id INT IDENTITY(1,1),
    order_number INT NOT NULL,
    customer_id INT NOT NULL,
	datetime_added DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (order_id),
    CONSTRAINT FK_CustomerOrder FOREIGN KEY (customer_id) 
	REFERENCES customer(customer_id)
);
