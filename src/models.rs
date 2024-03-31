use std::time::SystemTime;
use diesel::Queryable;

#[derive(Queryable, Debug)]
pub struct Date {
    pub date_id: i32,
    pub title: String,
    pub description: String,
    pub letter: char,
}

#[derive(Queryable, Debug)]
pub struct Cost {
    pub cost_id: i32,
    pub name: String,
}

#[derive(Queryable, Debug)]
pub struct Place {
    pub place_id: i32,
    pub name: String,
}

#[derive(Queryable, Debug)]
pub struct DateCost {
    pub date_id: i32,
    pub cost_id: i32,
}

#[derive(Queryable, Debug)]
pub struct DatePlace {
    pub date_id: i32,
    pub place_id: i32,
}

#[derive(Queryable, Debug)]
pub struct User {
    pub user_id: i32,
    pub username: String,
    pub password: String,
}

#[derive(Queryable, Debug)]
pub struct Alphabet {
    pub alphabet_id: i32,
    pub title: String,
    pub created_at: SystemTime, // Utiliza NaiveDateTime para representar fechas y horas
    pub user_id: i32,
}

#[derive(Queryable, Debug)]
pub struct AlphabetDate {
    pub alphabet_id: i32,
    pub date_id: i32,
    pub created_at: SystemTime,
    pub completed_at: Option<SystemTime>, // Utiliza Option para representar un valor opcional (puede ser nulo)
}
