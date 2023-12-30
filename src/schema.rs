// @generated automatically by Diesel CLI.

diesel::table! {
    stocks (id) {
        id -> Int4,
        date_of_price -> Date,
        symbol -> Varchar,
        price -> Float4,
    }
}
