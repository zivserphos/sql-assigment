CREATE TABLE Coach(
 id int NOT NULL,
name char(30) NOT NULL,
mail char(40) NOT NULL,
phone char(13) NOT NULL,
from_date DATE NOT NULL,
hourly_rate int NOT NULL,
institute char(30) NOT NULL,
primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Coach` VALUES 
