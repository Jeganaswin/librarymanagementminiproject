create database librarydb;
use librarydb;
create table User(
 userId int AUTO_INCREMENT primary key,
 username varchar(50),
 age int
 )
 alter table User 
 add column contacts int;
 select * from User;
 select * from User;
 CREATE TABLE Rent (
    rent_id INT AUTO_INCREMENT PRIMARY KEY,

    user_id INT NOT NULL,
    book_id INT NOT NULL,

    quantity INT NOT NULL,

    rent_date DATE NOT NULL,
    return_date DATE NOT NULL,

    CONSTRAINT fk_rent_user
        FOREIGN KEY (user_id) REFERENCES User(userId),

    CONSTRAINT fk_rent_book
        FOREIGN KEY (book_id) REFERENCES Books(Bkid)
);
select * from rent;