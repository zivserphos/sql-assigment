CREATE TABLE Coaches(
 coach_id  INT,
type_name varchar(255),
FOREIGN KEY (coach_id) REFERENCES Coach(id),
FOREIGN KEY (type_name) REFERENCES Types(type_name),
CREATE TABLE clients(
c_id  INT,
name varchar(30),
address varchar(40),
phone varchar(13),
PRIMARY KEY (c_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



