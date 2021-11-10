# What is each pokemon's primary type?

SELECT p.name, t.name as 'Primary' FROM pokemons p JOIN types t ON p.primary_type = t.id;

# What is Rufflet's secondary type?

SELECT p.name, t.name as 'Secondary Type' FROM pokemons p, types t WHERE p.name = 'Rufflet' AND p.secondary_type = t.id;

# What are the names of the pokemon that belong to the trainer with trainerID 303?

SELECT p.name FROM pokemon_trainer pt, pokemons p WHERE pt.trainerID = 303 AND pt.pokemon_id = p.id;

SELECT p.name FROM pokemons p JOIN pokemon_trainer pt ON pt.pokemon_id = p.id WHERE trainerID = 303;

# How many pokemon have a secondary type Poison

SELECT COUNT(*) FROM pokemons p, types t WHERE t.name = 'Poison' AND t.id = p.secondary_type;

# What are all the primary types and how many pokemon have that type?

SELECT t.name, count(t.name) FROM types t JOIN pokemons p ON p.primary_type = t.id GROUP BY t.id ORDER BY count(t.name) DESC;

# How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer

SELECT trainerID, COUNT(pokemon_id) num_pokemon_lvl_100 FROM pokemon_trainer WHERE pokelevel = 100 GROUP BY trainerID ORDER BY count(pokemon_id);

# How many pokemon only belong to one trainer and no other?

# SELECT pokemon_id, Count(trainerID) FROM pokemon_trainer GROUP BY pokemon_id HAVING COUNT(trainerID) = 1;

SELECT p.name, Count(pt.trainerID) AS num_of_trainers FROM pokemon_trainer pt JOIN pokemons p ON pt.pokemon_id = p.id GROUP BY pt.pokemon_id HAVING COUNT(pt.trainerID) = 1;