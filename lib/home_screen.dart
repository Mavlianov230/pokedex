import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/screen/aron_screen.dart';
import 'package:pokedex/screen/bulba_screen.dart';
import 'package:pokedex/screen/butterfree_screen.dart';
import 'package:pokedex/screen/charmander_screen.dart';
import 'package:pokedex/screen/ditto_screen.dart';
import 'package:pokedex/screen/gastly_screen.dart';
import 'package:pokedex/screen/mew_screen.dart';
import 'package:pokedex/screen/pikachu_screen.dart';
import 'package:pokedex/screen/squirtle_screen.dart';

import 'pokemon_card.dart';

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
                    number: '#001',
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
                    number: '#004',
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
                    number: '#007',
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
                  PokemonCard(
                    image: 'butterfree',
                    name: 'Butterfree',
                    color: Colors.lightGreen,
                    number: '#012',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const ButterfreeScreen(color: Colors.white)),
                      );
                    },
                  ),
                  PokemonCard(
                    image: 'pikachu',
                    name: 'Pikachu',
                    color: Colors.yellow,
                    number: '#025',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const PikachuScreen(color: Colors.white)),
                      );
                    },
                  ),
                  PokemonCard(
                    image: 'gastly',
                    name: 'Gastly',
                    color: Colors.purple,
                    number: '#092',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const GastlyScreen(color: Colors.white)),
                      );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PokemonCard(
                    image: 'ditto',
                    name: 'Ditto',
                    color: Colors.grey,
                    number: '#132',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const DittoScreen(color: Colors.white)),
                      );
                    },
                  ),
                  PokemonCard(
                    image: 'mew',
                    name: 'Mew',
                    color: Colors.pink,
                    number: '#152',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const MewScreen(color: Colors.white)),
                      );
                    },
                  ),
                  PokemonCard(
                    image: 'aron',
                    name: 'Aron',
                    color: Colors.lightBlue,
                    number: '#304',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const AronScreen(color: Colors.white)),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
