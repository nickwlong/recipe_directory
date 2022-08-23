CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  name text,
  average_cooking_time int,
  rating int
);

INSERT INTO recipes (name, average_cooking_time, rating) VALUES
('Baked potato', 60, 4),
('Pasta', 25, 3),
('Casserole', 74, 5),
('Frittata', 40, 5);