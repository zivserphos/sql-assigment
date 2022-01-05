CREATE TABLE Types(
 type_name char(15) NOT NULL,
description char(30),
primary key(type_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


insert INTO "Types" VALUES ('Cycling' , 'riding on bikes') , ("Archery" , "A sport you need to be very focus at") , ("Boxing" , "EYE OF THE TIGER") , ("Athletics" , "for really fit people") ,("Canoe")