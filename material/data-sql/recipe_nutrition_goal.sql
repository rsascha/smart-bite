DROP TABLE IF EXISTS recipe_nutrition_goal;
CREATE TABLE recipe_nutrition_goal (
    id SERIAL PRIMARY KEY,
    calorie_goal FLOAT,
    protein_goal FLOAT,
    carbohydrate_goal FLOAT,
    fat_goal FLOAT,
    user_id INT REFERENCES recipe_user(uid)
);

-- Ernährungsziel
INSERT INTO recipe_nutrition_goal (user_id, calorie_goal, protein_goal, carbohydrate_goal, fat_goal) VALUES
(1, 2000, 50, 250, 70),
(2, 1800, 40, 200, 60),
(3, 2200, 80, 180, 90),
(4, 1900, 60, 210, 75);
