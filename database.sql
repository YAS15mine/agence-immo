
CREATE TABLE clients (
client_id INT NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email_address VARCHAR(100) NOT NULL,
password VARCHAR(50) NOT NULL,
phone_number VARCHAR(20) NOT NULL
);
INSERT INTO clients VALUES
(1, 'John', 'Doe', 'johndoe@gmail.com', 'password123', '555-555-5555'),
(2, 'Jane', 'Smith', 'janesmith@yahoo.com', 'password456', '555-123-4567'),
(3, 'Bob', 'Johnson', 'bobjohnson@hotmail.com', 'password789', '555-867-5309'),
(4, 'Sarah', 'Lee', 'sarahlee@gmail.com', 'password101', '555-246-8135'),
(5, 'Mike', 'Wong', 'mikewong@yahoo.com', 'password1212', '555-314-1592');
CREATE TABLE real_estate_gallery (
property_id INT NOT NULL PRIMARY KEY,
client_id INT NOT NULL,
title VARCHAR(100) NOT NULL,
category VARCHAR(50) NOT NULL,
type ENUM('lease', 'rent') NOT NULL,
surface INT NOT NULL,
address VARCHAR(100) NOT NULL,
price DECIMAL(10,2) NOT NULL,
description VARCHAR(500) NOT NULL
);
INSERT INTO real_estate_gallery (property_id, client_id, title, category, type, datepublication,datemodification ,ville, price, ) VALUES
(1, 1, 'Cozy apartment', 'Apartment', 'rent', 15/06/2020, 'agadir', 1500.00, ),
(2, 2, 'Spacious house', 'House', 'lease', 200, 'tanger ', 3000.00, ),
(3, 3, 'Sunny studio', 'Studio', 'rent', 40, 'khnifra', 1000.00, ),
(4, 4, 'Luxury penthouse', 'Penthouse', 'lease', 300, 'tetoune', 5000.00,),
(5, 5, 'Charming cottage', 'Cottage', 'rent', 100, 'rabat', 2000.00, 'A cozy and rustic cottage nestled in the woods.'),
(6, 1, 'Modern townhouse', 'Townhouse', 'lease', 150, 'casablanca', 2500.00, 'A sleek and contemporary townhouse with all the latest amenities.'),
(7, 2, 'Historic mansion', 'Mansion', 'rent', 500, 'safi', 10000.00, 'A grand and stately mansion with a rich history and plenty of space.'),
(8, 3, 'Beachfront condo', 'Condo', 'lease', 80, 'guelmim', 3500.00, 'A stylish and modern condo right on the beach.'),
(9, 4, 'Rustic cabin', 'Cabin', 'rent', 75, 'tata', 1200.00, 'A cozy cabin in the woods, perfect for a weekend getaway.'),
(10, 5, 'Spacious loft', 'Loft', 'lease', 250, 'skhirat', 4000.00, 'A trendy and spacious loft in the heart of the city.'),
(11, 1, 'Mountain chalet', 'Chalet', 'rent', 120, 'zagoura', 1800.00, 'A charming chalet with stunning views of the mountains.'),
(12, 2, 'Country estate', 'Estate', 'lease', 400, 'knitra', 8000.00, 'An expansive and luxurious estate with plenty of privacy and seclusion.'),
(13, 3, 'Riverside bungalow', 'Bungalow', 'rent', 90, '"Ifrane', 1500.00, 'A quaint and charming bungalow right on the river.'),
(14, 4, 'Sleek high-rise', 'High-rise', 'lease', 400, 'taza', 6000.00, 'A modern and luxurious high-rise with breathtaking views of the city.'),
(15, 5, 'Historic townhome', 'Townhome', 'rent', 180, 'tiznit', 3000.00, 'A beautifully restored townhome in a historic district.');
CREATE TABLE images_gallery (
image_id INT NOT NULL PRIMARY KEY,
primary_or_secondary ENUM('primary', 'secondary') NOT NULL,
image_path VARCHAR(200) NOT NULL,
property_id INT NOT NULL
);
INSERT INTO images_gallery (image_id, primary_or_secondary, image_path, property_id) VALUES
(1, 'primary', '/images/1_primary.jpg', 1),
(2, 'secondary', '/images/1_secondary1.jpg', 1),
(3, 'secondary', '/images/1_secondary2.jpg', 1),
(4, 'secondary', '/images/1_secondary3.jpg', 1),
(5, 'secondary', '/images/1_secondary4.jpg', 1),
(6, 'primary', '/images/2_primary.jpg', 2),
(7, 'secondary', '/images/2_secondary1.jpg', 2),
(8, 'secondary', '/images/2_secondary2.jpg', 2),
(9, 'secondary', '/images/2_secondary3.jpg', 2),
(10, 'secondary', '/images/2_secondary4.jpg', 2),
(11, 'primary', '/images/3_primary.jpg', 3),
(12, 'secondary', '/images/3_secondary1.jpg', 3),
(13, 'secondary', '/images/3_secondary2.jpg', 3),
(14, 'secondary', '/images/3_secondary3.jpg', 3),
(15, 'secondary', '/images/3_secondary4.jpg', 3),
(16, 'primary', '/images/4_primary.jpg', 4),
(17, 'secondary', '/images/4_secondary1.jpg', 4),
(18, 'secondary', '/images/4_secondary2.jpg', 4),
(19, 'secondary', '/images/4_secondary3.jpg', 4),
(20, 'secondary', '/images/4_secondary4.jpg', 4),
(21, 'primary', '/images/5_primary.jpg', 5),
(22, 'secondary', '/images/5_secondary1.jpg', 5),
(23, 'secondary', '/images/5_secondary2.jpg', 5),
(24, 'secondary', '/images/5_secondary3.jpg', 5),
(25, 'secondary', '/images/5_secondary4.jpg', 5),
(26, 'primary', '/images/6_primary.jpg', 6),
(27, 'secondary', '/images/6_secondary1.jpg', 6),
(28, 'secondary', '/images/6_secondary2.jpg', 6),
(29, 'secondary', '/images/6_secondary3.jpg', 6),
(30, 'secondary', '/images/6_secondary4.jpg', 6),
(31, 'primary', '/images/7_primary.jpg', 6),
(32, 'secondary', '/images/7_secondary1.jpg', 6),
(33, 'secondary', '/images/7_secondary2.jpg', 6),
(34, 'secondary', '/images/7_secondary3.jpg', 6),
(35, 'secondary', '/images/7_secondary4.jpg', 6);
