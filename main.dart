import 'package:flutter/material.dart';

void main() => runApp(PokemonCardApp());

class PokemonCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('About Me'),
          centerTitle: true,
        ),
        body: Center(
          child: PokemonCard(),
        ),
      ),
    );
  }
}

class PokemonCard extends StatelessWidget {
  final String pokemonName = "Justin Ariyuna";
  final int hp = 100;
  final String abilityName = "5026221049";
  final int abilityDamage = 25012005;
  final String description =
      "It is not satisfied unless it eats over 880 pounds of food every day. When it is done eating, it goes promptly to sleep.";
  final String imageUrl = 'assets/Justin.jpg'; // Add your image here

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 8),

            // Pokemon Name and HP
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  pokemonName,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "HP $hp",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Divider(thickness: 1, color: Colors.grey[300]),

            // Ability
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  abilityName,
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "$abilityDamage",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 4),

            // Description
            Text(
              description,
              style: TextStyle(color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
