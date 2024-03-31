-- Your SQL goes here
create table `alphabet_date` (
  `alphabet_id` integer not null,
  `date_id` integer not null,
  `created_at` timestamp not null default CURRENT_TIMESTAMP,
  `completed_at` timestamp default null,
  primary key (`alphabet_id`, `date_id`)
);
