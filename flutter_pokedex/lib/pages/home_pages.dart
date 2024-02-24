import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_pokedox/model/pokemon_model.dart';
import 'package:flutter_pokedox/services/pokedex_api.dart';
import 'package:flutter_pokedox/widgets/app_title.dart';
import 'package:flutter_pokedox/widgets/pokemon_list_wiget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  OrientationBuilder(    //   item builder ' in bir kere daha çalismasini saglar.
        builder: (context, orientation) => Column(
          children:[ 
          AppTitle(),
          Expanded(child: PokemonList()),
        
        ],
        ),
      ),
    );
  }
}