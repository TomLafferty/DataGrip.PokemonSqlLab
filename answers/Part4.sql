

# This solution is using my first instinct to add the levels
# of all pokemon owned by each trainer, showing the strongest
# trainer by culminated pokemon strength.

 SELECT
        max(p.name) AS 'Pokemon Name',
        t.trainername AS 'Trainer Name',
        sum(pt.pokelevel) as 'Level'
#         max(ty.name) AS 'Primary Type'
 FROM pokemon_trainer pt
 JOIN trainers t ON t.trainerID = pt.trainerID
 JOIN pokemons p ON p.id = pt.pokemon_id
#  JOIN types ty ON ty.id = p.id
 GROUP BY t.trainerID
 Order BY sum(pt.pokelevel) DESC;



# WHERE ty.id = p.primary_type

#  WHERE ty.id = p.secondary_type
# SELECT trainerID, COUNT(pokemon_id) num_pokemon FROM pokemon_trainer WHERE pokelevel = 100 GROUP BY trainerID ORDER BY count(pokemon_id);

# SELECT p.name AS 'Pokemon Name', t.trainername AS 'Trainer Name', pt.pokelevel AS 'Level', ty.name AS 'Primary Type' FROM pokemons p, trainers t, pokemon_trainer pt JOIN types ty, pokemons p ON ty.id =p.primary_type;
#
#      , ty.name AS 'Secondary Type' FROM pokemons p, trainers t, pokemon_trainer pt, types ty WHERE ty.id = p.primary_type;