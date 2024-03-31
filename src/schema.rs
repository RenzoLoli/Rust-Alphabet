// @generated automatically by Diesel CLI.

diesel::table! {
    alphabet (alphabet_id) {
        alphabet_id -> Integer,
        #[max_length = 32]
        title -> Varchar,
        created_at -> Timestamp,
        user_id -> Integer,
    }
}

diesel::table! {
    alphabet_date (alphabet_id, date_id) {
        alphabet_id -> Integer,
        date_id -> Integer,
        created_at -> Timestamp,
        completed_at -> Nullable<Timestamp>,
    }
}

diesel::table! {
    cost (cost_id) {
        cost_id -> Integer,
        #[max_length = 32]
        name -> Varchar,
    }
}

diesel::table! {
    date (date_id) {
        date_id -> Integer,
        #[max_length = 32]
        title -> Varchar,
        #[max_length = 300]
        description -> Varchar,
        #[max_length = 1]
        letter -> Char,
    }
}

diesel::table! {
    date_cost (date_id, cost_id) {
        date_id -> Integer,
        cost_id -> Integer,
    }
}

diesel::table! {
    date_place (date_id, place_id) {
        date_id -> Integer,
        place_id -> Integer,
    }
}

diesel::table! {
    place (place_id) {
        place_id -> Integer,
        #[max_length = 32]
        name -> Varchar,
    }
}

diesel::table! {
    user (user_id) {
        user_id -> Integer,
        #[max_length = 32]
        username -> Varchar,
        #[max_length = 32]
        password -> Varchar,
    }
}

diesel::joinable!(alphabet -> user (user_id));
diesel::joinable!(alphabet_date -> alphabet (alphabet_id));
diesel::joinable!(alphabet_date -> date (date_id));
diesel::joinable!(date_cost -> cost (cost_id));
diesel::joinable!(date_cost -> date (date_id));
diesel::joinable!(date_place -> date (date_id));
diesel::joinable!(date_place -> place (place_id));

diesel::allow_tables_to_appear_in_same_query!(
    alphabet,
    alphabet_date,
    cost,
    date,
    date_cost,
    date_place,
    place,
    user,
);
