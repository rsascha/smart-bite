DROP TABLE IF EXISTS recipe_ingredient;

CREATE TABLE recipe_ingredient (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    calories FLOAT,
    protein FLOAT,
    carbohydrates FLOAT,
    fats FLOAT,
    allergen_category VARCHAR(200)
);



INSERT INTO recipe_ingredient (name, calories, protein, carbohydrates, fats, allergen_category) VALUES
    ('Tomate', 18, 0.9, 3.9, 0.2, 'Nachtschattengewächse'),
    ('Gurke', 16, 0.7, 3.6, 0.1, NULL),
    ('Kartoffel', 77, 2.0, 17.0, 0.1, 'Nachtschattengewächse'),
    ('Milch', 42, 3.4, 4.8, 1.0, 'Milchprodukte'),
    ('Erdnuss', 567, 25.8, 16.1, 49.2, 'Nüsse'),
    ('Mandeln', 579, 21.2, 21.6, 49.9, 'Nüsse'),
    ('Lachs', 208, 20.4, 0.0, 13.6, 'Meeresfrüchte'),
    ('Ei', 155, 13.0, 1.1, 11.0, 'Eier'),
    ('Weizenbrot', 265, 9.0, 49.0, 3.2, 'Gluten'),
    ('Sojabohne', 446, 36.5, 30.2, 19.9, 'Hülsenfrüchte'),
    ('Paprika', 31, 1.0, 6.0, 0.3, 'Nachtschattengewächse'),
    ('Aubergine', 25, 1.0, 5.9, 0.2, 'Nachtschattengewächse'),
    ('Mozzarella', 280, 22.0, 2.2, 22.4, 'Milchprodukte'),
    ('Joghurt', 59, 10.0, 3.6, 0.4, 'Milchprodukte'),
    ('Reis', 130, 2.4, 28.0, 0.3, NULL),
    ('Huhn', 239, 27.3, 0.0, 13.6, NULL),
    ('Schweinefleisch', 242, 27.0, 0.0, 14.0, NULL),
    ('Rindfleisch', 250, 26.0, 0.0, 15.0, NULL),
    ('Thunfisch', 144, 23.3, 0.0, 4.9, 'Meeresfrüchte'),
    ('Shrimp', 85, 20.0, 0.0, 0.5, 'Meeresfrüchte'),
    ('Brokkoli', 55, 3.7, 11.1, 0.6, NULL),
    ('Karotte', 41, 0.9, 9.6, 0.2, NULL),
    ('Apfel', 52, 0.3, 14.0, 0.2, NULL),
    ('Banane', 89, 1.1, 23.0, 0.3, NULL),
    ('Orange', 47, 0.9, 12.0, 0.1, NULL),
    ('Ananas', 50, 0.5, 13.1, 0.1, NULL),
    ('Mango', 60, 0.8, 15.0, 0.4, NULL),
    ('Erdbeere', 32, 0.7, 7.7, 0.3, NULL),
    ('Blaubeere', 57, 0.7, 14.5, 0.3, NULL),
    ('Himbeere', 52, 1.2, 12.0, 0.7, NULL),
    ('Avocado', 160, 2.0, 9.0, 15.0, NULL),
    ('Spinat', 23, 2.9, 3.6, 0.4, NULL),
    ('Grünkohl', 49, 4.3, 8.8, 0.9, NULL),
    ('Zucchini', 17, 1.2, 3.1, 0.3, NULL),
    ('Kürbis', 26, 1.0, 6.5, 0.1, NULL),
    ('Honig', 304, 0.3, 82.4, 0.0, 'Honig'),
    ('Haferflocken', 389, 16.9, 66.3, 6.9, 'Gluten'),
    ('Quinoa', 120, 4.1, 21.3, 1.9, NULL),
    ('Chiasamen', 486, 16.5, 42.1, 30.7, NULL),
    ('Leinsamen', 534, 18.3, 28.9, 42.2, NULL),
    ('Kürbiskerne', 559, 30.2, 10.7, 49.1, 'Nüsse'),
    ('Cashew', 553, 18.2, 30.2, 43.8, 'Nüsse'),
    ('Walnuss', 654, 15.0, 14.0, 65.2, 'Nüsse'),
    ('Bohnen', 347, 21.0, 63.0, 1.2, 'Hülsenfrüchte'),
    ('Linsen', 352, 24.6, 63.4, 1.1, 'Hülsenfrüchte'),
    ('Kidneybohnen', 333, 23.6, 60.0, 0.8, 'Hülsenfrüchte'),
    ('Kichererbsen', 364, 19.3, 61.0, 6.0, 'Hülsenfrüchte'),
    ('Süßkartoffel', 86, 1.6, 20.1, 0.1, NULL),
    ('Tofu', 76, 8.1, 1.9, 4.8, 'Hülsenfrüchte'),
    ('Tempeh', 192, 20.3, 7.6, 10.8, 'Hülsenfrüchte'),
    ('Olivenöl', 884, 0.0, 0.0, 100.0, NULL),
    ('Butter', 717, 0.9, 0.1, 81.1, 'Milchprodukte'),
    ('Käse', 402, 25.0, 1.3, 33.1, 'Milchprodukte'),
    ('Hüttenkäse', 98, 11.1, 3.4, 4.3, 'Milchprodukte'),
    ('Parmesan', 431, 38.0, 4.1, 29.4, 'Milchprodukte'),
    ('Schokolade', 546, 4.9, 61.0, 31.0, NULL),
    ('Mandarinen', 53, 0.8, 13.3, 0.3, NULL),
    ('Birne', 57, 0.4, 15.0, 0.1, NULL),
    ('Pfirsich', 39, 0.9, 9.5, 0.3, NULL),
    ('Granatapfel', 83, 1.7, 18.7, 1.2, NULL),
    ('Kokosnuss', 354, 3.3, 15.2, 33.5, NULL),
    ('Aprikose', 48, 1.4, 11.1, 0.4, NULL),
    ('Zitrone', 29, 1.1, 9.3, 0.3, NULL),
    ('Kaffee', 1, 0.1, 0.0, 0.0, NULL),
    ('Tee', 1, 0.0, 0.0, 0.0, NULL),
    ('Rote Beete', 43, 1.6, 9.6, 0.2, NULL),
    ('Pilze', 22, 3.1, 3.3, 0.3, NULL),
    ('Basilikum', 23, 3.2, 2.7, 0.6, NULL),
    ('Thymian', 101, 5.6, 24.5, 1.7, NULL),
    ('Rosmarin', 131, 3.3, 20.7, 5.9, NULL),
    ('Oregano', 265, 9.0, 68.9, 4.3, NULL),
    ('Petersilie', 36, 3.0, 6.3, 0.8, NULL),
    ('Minze', 44, 3.3, 8.4, 0.6, NULL),
    ('Koriander', 23, 2.1, 3.7, 0.5, NULL),
    ('Ingwer', 80, 1.8, 17.8, 0.8, NULL),
    ('Knoblauch', 149, 6.4, 33.1, 0.5, NULL),
    ('Zwiebel', 40, 1.1, 9.3, 0.1, NULL),
    ('Sellerie', 16, 0.7, 3.5, 0.2, NULL),
    ('Fenchel', 31, 1.2, 7.3, 0.2, NULL),
    ('Chili', 40, 1.9, 8.8, 0.4, 'Nachtschattengewächse'),
    ('Rucola', 25, 2.6, 3.7, 0.7, NULL),
    ('Pak Choi', 13, 1.5, 2.2, 0.2, NULL),
    ('Grüne Bohnen', 31, 1.8, 7.1, 0.1, 'Hülsenfrüchte'),
    ('Edamame', 121, 11.9, 8.9, 5.2, 'Hülsenfrüchte'),
    ('Artischocke', 47, 3.3, 10.5, 0.2, NULL),
    ('Kohl', 25, 1.3, 5.8, 0.1, NULL),
    ('Rotkohl', 31, 1.4, 7.4, 0.2, NULL),
    ('Blumenkohl', 25, 1.9, 4.9, 0.3, NULL),
    ('Mais', 86, 3.3, 19.0, 1.2, NULL),
    ('Weißkohl', 25, 1.3, 5.8, 0.1, NULL),
    ('Rosenkohl', 43, 3.4, 8.9, 0.3, NULL),
    ('Lauch', 61, 1.5, 14.2, 0.3, NULL),
    ('Zucker', 387, 0.0, 100.0, 0.0, NULL),
    ('Salz', 0, 0.0, 0.0, 0.0, NULL),
    ('Essig', 21, 0.0, 0.9, 0.0, NULL),
    ('Sojasauce', 53, 5.0, 4.9, 0.0, 'Hülsenfrüchte'),
    ('Ketchup', 112, 1.0, 25.8, 0.2, 'Nachtschattengewächse'),
    ('Mayonnaise', 680, 1.0, 0.6, 75.0, NULL),
    ('Pistazien', 562, 20.0, 27.2, 45.3, 'Nüsse'),
    ('Macadamianüsse', 718, 7.9, 13.8, 75.8, 'Nüsse'),
    ('Sonnenblumenkerne', 584, 20.8, 20.0, 51.5, NULL),
    ('Dinkelmehl', 333, 14.6, 70.2, 2.4, 'Gluten'),
    ('Roggenmehl', 335, 9.0, 73.0, 1.7, 'Gluten'),
    ('Vollkornbrot', 250, 9.0, 43.0, 4.0, 'Gluten'),
    ('Magerquark', 67, 12.0, 4.0, 0.2, 'Milchprodukte'),
    ('Sahne', 337, 2.1, 3.2, 35.0, 'Milchprodukte'),
    ('Schweizer Käse', 380, 25.0, 1.4, 29.0, 'Milchprodukte'),
    ('Hirse', 119, 3.5, 23.7, 1.0, NULL),
    ('Kokosöl', 862, 0.0, 0.0, 100.0, NULL),
    ('Pekannüsse', 691, 9.2, 13.9, 72.0, 'Nüsse'),
    ('Haselnüsse', 628, 15.0, 16.7, 60.8, 'Nüsse'),
    ('Rindersteak', 271, 26.1, 0.0, 19.0, NULL),
    ('Ente', 337, 18.3, 0.0, 28.4, NULL),
    ('Hähnchenbrust', 165, 31.0, 0.0, 3.6, NULL),
    ('Lamm', 294, 25.6, 0.0, 21.3, NULL),
    ('Wildreis', 101, 4.0, 21.0, 0.3, NULL),
    ('Hummer', 77, 16.5, 0.0, 0.9, 'Meeresfrüchte'),
    ('Kabeljau', 82, 18.0, 0.0, 0.7, 'Meeresfrüchte'),
    ('Austern', 68, 7.0, 4.0, 2.0, 'Meeresfrüchte'),
    ('Calamari', 92, 15.6, 3.1, 1.4, 'Meeresfrüchte'),
    ('Linsennudeln', 352, 24.0, 53.0, 1.5, 'Hülsenfrüchte'),
    ('Kichererbsenmehl', 387, 22.0, 58.0, 6.7, 'Hülsenfrüchte'),
    ('Mandeldrink', 13, 0.4, 0.3, 1.2, 'Nüsse'),
    ('Cashewmilch', 25, 0.9, 1.5, 2.0, 'Nüsse'),
    ('Hafermilch', 47, 1.0, 8.0, 1.5, 'Gluten'),
    ('Kokosmilch', 230, 2.3, 5.5, 23.8, NULL),
    ('Reismilch', 47, 0.3, 10.0, 1.0, NULL),
    ('Sesam', 573, 17.0, 23.0, 49.7, 'Nüsse'),
        ('Senf', 66, 4.4, 5.8, 3.6, 'Hülsenfrüchte');

