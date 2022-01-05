CREATE TABLE training_sequence(
c_id  INT,
start_date DATE ,
coach_id  INT,
type_name char(15) NOT NULL,
hours int,

FOREIGN KEY (c_id) REFERENCES clients(c_id),
FOREIGN KEY (coach_id) REFERENCES coach(id),
FOREIGN KEY (type_name) REFERENCES types(type_name)
primary key  (start_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;