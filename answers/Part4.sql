


# WHERE ty.id = p.primary_type

#  WHERE ty.id = p.secondary_type
# SELECT trainerID, COUNT(pokemon_id) num_pokemon FROM pokemon_trainer WHERE pokelevel = 100 GROUP BY trainerID ORDER BY count(pokemon_id);

SELECT p.name AS 'Pokemon Name', t.trainername AS 'Trainer Name', pt.pokelevel AS 'Level', ty.name AS 'Primary Type' FROM pokemons p, trainers t, pokemon_trainer pt JOIN types ty, pokemons p ON ty.id =p.primary_type;
#
#      , ty.name AS 'Secondary Type' FROM pokemons p, trainers t, pokemon_trainer pt, types ty WHERE ty.id = p.primary_type;