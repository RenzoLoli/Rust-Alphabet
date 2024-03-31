-- Your SQL goes here
CREATE TABLE `date` (
  `date_id` integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(300) NOT NULL,
  `letter` char NOT NULL
);
