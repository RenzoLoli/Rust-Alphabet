-- Your SQL goes here

ALTER TABLE `alphabet` ADD FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

ALTER TABLE `alphabet_date` ADD FOREIGN KEY (`alphabet_id`) REFERENCES `alphabet` (`alphabet_id`);

ALTER TABLE `alphabet_date` ADD FOREIGN KEY (`date_id`) REFERENCES `date` (`date_id`);

ALTER TABLE `date_cost` ADD FOREIGN KEY (`date_id`) REFERENCES `date` (`date_id`);

ALTER TABLE `date_cost` ADD FOREIGN KEY (`cost_id`) REFERENCES `cost` (`cost_id`);

ALTER TABLE `date_place` ADD FOREIGN KEY (`date_id`) REFERENCES `date` (`date_id`);

ALTER TABLE `date_place` ADD FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`);
