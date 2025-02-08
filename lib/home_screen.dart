import 'package:flutter/material.dart';
import 'package:pokedex/screen/aron_screen.dart';
import 'package:pokedex/screen/bulba_screen.dart';
import 'package:pokedex/screen/butterfree_screen.dart';
import 'package:pokedex/screen/charmander_screen.dart';
import 'package:pokedex/pokemon_card.dart';
import 'package:pokedex/screen/ditto_screen.dart';
import 'package:pokedex/screen/gastly_screen.dart';
import 'package:pokedex/screen/mew_screen.dart';
import 'package:pokedex/screen/pikachu_screen.dart';
import 'package:pokedex/screen/squirtle_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.catching_pokemon,
                        size: 32,
                      ),
                      Text(
                        'Pokedex',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_downward,
                    size: 32,
                    color: Colors.grey,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PokemonCard(
                    image: 'bulba',
                    name: 'Bulbasaur',
                    color: Colors.green,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const BulbaScreen(color: Colors.white)),
                      );
                    },
                  ),
                  PokemonCard(
                    image: 'charmander',
                    name: 'Charmander',
                    color: Colors.orange,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const CharmanderScreen(color: Colors.white)),
                      );
                    },
                  ),
                  PokemonCard(
                    image: 'squirtle',
                    name: 'Squirtle',
                    color: Colors.blue,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const SquirtleScreen(color: Colors.white)),
                      );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PokemonCard(image: 'butterfree',
                    name: 'Buttefree',
                    color: Colors.lightGreen,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const ButterfreeScreen(color: Colors.white)),
                      );
                    },),
                  PokemonCard(image: 'picachu',
                    name: 'Pikachu',
                    color: Colors.yellow,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const PikachuScreen(color: Colors.white)),
                      );
                    },),
                  PokemonCard(image: 'gastly',
                    name: 'Gastly',
                    color: Colors.purple,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const GastlyScreen(color: Colors.white)),
                      );
                    },),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PokemonCard(image: 'ditto',
                    name: 'Ditto',
                    color: Colors.grey,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const DittoScreen(color: Colors.white)),
                      );
                    },),
                  PokemonCard(image: 'mew',
                    name: 'Mew',
                    color: Colors.pink,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const MewScreen(color: Colors.white)),
                      );
                    },),
                  PokemonCard(image: 'aron',
                    name: 'Aron',
                    color: Colors.lightBlue,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const AronScreen(color: Colors.white)),
                      );
                    },),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
