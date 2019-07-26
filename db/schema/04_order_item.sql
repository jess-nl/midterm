DROP TABLE IF EXISTS order_item CASCADE;

CREATE TABLE order_item (
  id SERIAL PRIMARY KEY,
  food_items_id INTEGER REFERENCES food_items(id) ON DELETE CASCADE,
  order_id INTEGER REFERENCES orders(id) ON DELETE CASCADE,
  food_extras_id INTEGER REFERENCES food_extras(id) ON DELETE CASCADE
);