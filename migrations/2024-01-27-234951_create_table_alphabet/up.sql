-- Your SQL goes here
CREATE TABLE `alphabet` (
  `alphabet_id` integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` integer NOT NULL
);
