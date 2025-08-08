
CREATE DATABASE smartcity_tn;
USE smartcity_tn;

-- Cities table
CREATE TABLE cities (
  city_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  district VARCHAR(100),
  population BIGINT,
  general_description TEXT
);

-- Hotels
CREATE TABLE hotels (
  hotel_id INT AUTO_INCREMENT PRIMARY KEY,
  city_id INT NOT NULL,
  name VARCHAR(150) NOT NULL,
  address VARCHAR(255),
  phone VARCHAR(50),
  stars TINYINT,
  FOREIGN KEY (city_id) REFERENCES cities(city_id) ON DELETE CASCADE
);

-- Shopping Marts
CREATE TABLE marts (
  mart_id INT AUTO_INCREMENT PRIMARY KEY,
  city_id INT NOT NULL,
  name VARCHAR(150) NOT NULL,
  address VARCHAR(255),
  phone VARCHAR(50),
  FOREIGN KEY (city_id) REFERENCES cities(city_id) ON DELETE CASCADE
);

-- Restaurants
CREATE TABLE restaurants (
  rest_id INT AUTO_INCREMENT PRIMARY KEY,
  city_id INT NOT NULL,
  name VARCHAR(150) NOT NULL,
  cuisine VARCHAR(100),
  address VARCHAR(255),
  phone VARCHAR(50),
  FOREIGN KEY (city_id) REFERENCES cities(city_id) ON DELETE CASCADE
);

-- Tourist places
CREATE TABLE places (
  place_id INT AUTO_INCREMENT PRIMARY KEY,
  city_id INT NOT NULL,
  name VARCHAR(200) NOT NULL,
  description TEXT,
  visiting_hours VARCHAR(100),
  FOREIGN KEY (city_id) REFERENCES cities(city_id) ON DELETE CASCADE
);

-- Transport modes
CREATE TABLE transports (
  transport_id INT AUTO_INCREMENT PRIMARY KEY,
  city_id INT NOT NULL,
  mode VARCHAR(100) NOT NULL, -- e.g., Bus, Train, Metro, Taxi
  info VARCHAR(255),
  FOREIGN KEY (city_id) REFERENCES cities(city_id) ON DELETE CASCADE
);

-- Insert sample Tamil Nadu cities and sample rows
INSERT INTO cities (name, district, population, general_description) VALUES
('Chennai','Chennai', 4646732, 'Capital city of Tamil Nadu. Coastal city with beaches, temples, and large IT and industrial areas.'),
('Coimbatore','Coimbatore', 1060000, 'Industrial city known for textiles and engineering. Gateway to Western Ghats.'),
('Madurai','Madurai', 330000, 'Historic city known for Meenakshi Amman Temple and rich culture.'),
('Tiruchirappalli','Tiruchirappalli', 916857, 'Also called Trichy, known for Rock Fort Temple and railway junction.'),
('Salem','Salem', 829267, 'Known for steel and sago industries and nearby hill stations.');

-- Hotels sample
INSERT INTO hotels (city_id, name, address, phone, stars) VALUES
(1,'The Marina Hotel','Ks Rao Road, Chennai','044-12345678',4),
(2,'Coimbatore Residency','Race Course Road, Coimbatore','0422-9876543',3),
(3,'Meenakshi Court','Madurai Main Road','0452-2345678',3);

-- Marts sample
INSERT INTO marts (city_id, name, address, phone) VALUES
(1,'Chennai Central Mall','Egmore','044-22223333'),
(2,'Cross Cut Shopping','Gandhipuram','0422-3334444');

-- Restaurants sample

INSERT INTO restaurants (city_id, name, cuisine, address, phone) VALUES
(1,'Anjappar','Chettinad','T Nagar, Chennai','044-44556677'),
(3,'Murugan Idli Shop','South Indian','South Gate, Madurai','0452-7788990');


-- Places sample
INSERT INTO places (city_id, name, description, visiting_hours) VALUES
(1,'Marina Beach','Longest urban beach in India. Good for morning/evening walks.','Open 24 hours'),
(3,'Meenakshi Amman Temple','Famous Dravidian architecture temple dedicated to Goddess Meenakshi.','06:00 - 12:30, 16:00 - 21:00');

-- Transports sample
INSERT INTO transports (city_id, mode, info) VALUES
(1,'Metro','Chennai Metro network connecting many parts of city'),
(1,'Bus','Extensive MTC bus network'),
(2,'Train','Coimbatore Junction connects to major cities'),
(3,'Bus','Frequent local buses and private cabs');
