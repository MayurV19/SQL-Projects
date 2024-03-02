CREATE TABLE `flower_offered` (
  `Id` INT PRIMARY KEY,
  `User_id` INT,
  `Device_id` VARCHAR(50),
  `God_ID` INT,
  `Flower_Id` INT,
  `Condition` VARCHAR(20),
  `TimeStamp` TIMESTAMP
);

CREATE TABLE `Events table` (
  `Id` INT PRIMARY KEY,
  `User_id` INT,
  `Device_id` VARCHAR(50),
  `Events` VARCHAR(50),
  `TimeStamp` TIMESTAMP
);

CREATE TABLE `flower_claimed` (
  `Id` INT PRIMARY KEY,
  `User_id` INT,
  `Device_id` VARCHAR(50),
  `God_ID` INT,
  `Flower_Id` INT,
  `TimeStamp` TIMESTAMP
);

CREATE TABLE `God_profile` (
  `God_id` INT PRIMARY KEY,
  `God_name` VARCHAR(50),
  `Timestamp` TIMESTAMP,
  `Updated_at` TIME,
  `Updated_at2` TIME
);

CREATE TABLE `Flower_profile` (
  `Flower_id` INT PRIMARY KEY,
  `Flower_name` VARCHAR(50),
  `Timestamp` TIMESTAMP,
  `Updated_at` TIME,
  `Updated_at2` TIME
);

CREATE TABLE `Install` (
  `Id` INT PRIMARY KEY,
  `Guest_Id` INT,
  `User_id` INT,
  `Device_id` VARCHAR(50),
  `Timestamp` TIMESTAMP,
  `Login_status` INT
);

CREATE TABLE `User_engagement` (
  `Id` INT PRIMARY KEY,
  `Guest_Id` INT,
  `User_id` INT,
  `Device_id` VARCHAR(50),
  `Timestamp` TIMESTAMP,
  `Login_status` INT
);

ALTER TABLE `flower_offered` ADD FOREIGN KEY (`Flower_Id`) REFERENCES `Flower_profile` (`Flower_id`);

ALTER TABLE `flower_claimed` ADD FOREIGN KEY (`Flower_Id`) REFERENCES `Flower_profile` (`Flower_id`);

ALTER TABLE `flower_offered` ADD FOREIGN KEY (`God_ID`) REFERENCES `God_profile` (`God_id`);

ALTER TABLE `flower_claimed` ADD FOREIGN KEY (`God_ID`) REFERENCES `God_profile` (`God_id`);

ALTER TABLE `Events table` ADD FOREIGN KEY (`User_id`) REFERENCES `Install` (`User_id`);

ALTER TABLE `User_engagement` ADD FOREIGN KEY (`User_id`) REFERENCES `Install` (`User_id`);

ALTER TABLE `User_engagement` ADD FOREIGN KEY (`Device_id`) REFERENCES `Install` (`Device_id`);

ALTER TABLE `User_engagement` ADD FOREIGN KEY (`Guest_Id`) REFERENCES `Install` (`Guest_Id`);

ALTER TABLE `Events table` ADD FOREIGN KEY (`Device_id`) REFERENCES `Install` (`Device_id`);
