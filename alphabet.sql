CREATE TABLE `date` (
  `date_id` integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(300) NOT NULL,
  `letter` char NOT NULL
);

CREATE TABLE `cost` (
  `cost_id` integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL
);

CREATE TABLE `place` (
  `place_id` integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL
);

CREATE TABLE `date_cost` (
  `date_id` integer NOT NULL,
  `cost_id` integer NOT NULL,
  PRIMARY KEY (`date_id`, `cost_id`)
);

CREATE TABLE `date_place` (
  `date_id` integer NOT NULL,
  `place_id` integer NOT NULL,
  PRIMARY KEY (`date_id`, `place_id`)
);

CREATE TABLE `user` (
  `user_id` integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
);

CREATE TABLE `alphabet` (
  `alphabet_id` integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` integer NOT NULL
);

create table `alphabet_date` (
  `alphabet_id` integer not null,
  `date_id` integer not null,
  `created_at` timestamp not null default CURRENT_TIMESTAMP,
  `completed_at` timestamp default null,
  primary key (`alphabet_id`, `date_id`)
);

ALTER TABLE `alphabet` ADD FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

ALTER TABLE `alphabet_date` ADD FOREIGN KEY (`alphabet_id`) REFERENCES `alphabet` (`alphabet_id`);

ALTER TABLE `alphabet_date` ADD FOREIGN KEY (`date_id`) REFERENCES `date` (`date_id`);

ALTER TABLE `date_cost` ADD FOREIGN KEY (`date_id`) REFERENCES `date` (`date_id`);

ALTER TABLE `date_cost` ADD FOREIGN KEY (`cost_id`) REFERENCES `cost` (`cost_id`);

ALTER TABLE `date_place` ADD FOREIGN KEY (`date_id`) REFERENCES `date` (`date_id`);

ALTER TABLE `date_place` ADD FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`);
