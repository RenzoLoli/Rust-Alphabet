-- This file should undo anything in `up.sql`
ALTER TABLE alphabet
DROP FOREIGN KEY `user_id`;

ALTER TABLE alphabet_date
DROP FOREIGN KEY `alphabet_id`;

ALTER TABLE alphabet_date
DROP FOREIGN KEY `date_id`;

ALTER TABLE date_cost
DROP FOREIGN KEY `date_id`;

ALTER TABLE date_cost
DROP FOREIGN KEY `cost_id`;

ALTER TABLE date_place
DROP FOREIGN KEY `date_id`;

ALTER TABLE date_place
DROP FOREIGN KEY `place_id`;
