# What is each pokemon's primary type?

SELECT p.name, t.name FROM pokemons p, types t WHERE p.primary_type = t.id;

# What is Rufflet's secondary type?

SELECT p.name, t.name FROM pokemons p, types t WHERE p.name = 'Rufflet' AND p.secondary_type = t.id;

# What are the names of the pokemon that belong to the trainer with trainerID 303?

SELECT p.name FROM pokemon_trainer pt, pokemons p WHERE pt.trainerID = 303 AND pt.pokemon_id = p.id;

# How many pokemon have a secondary type Poison

SELECT COUNT(*) FROM pokemons p, types t WHERE t.name = 'Poison' AND t.id = p.secondary_type;

# What are all the primary types and how many pokemon have that type?

SELECT t.name, count(t.name) FROM types t JOIN pokemons p ON p.primary_type = t.id GROUP BY t.id ORDER BY count(t.name) DESC;

# How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer



# How many pokemon only belong to one trainer and no other?

