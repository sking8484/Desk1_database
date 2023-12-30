CREATE TABLE stocks (
  id SERIAL PRIMARY KEY,
  date_of_price DATE not null,
  symbol VARCHAR not null,
  price REAL not null
)-- Your SQL goes here
