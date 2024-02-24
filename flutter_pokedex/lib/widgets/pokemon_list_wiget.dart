import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_pokedox/model/pokemon_model.dart';
import 'package:flutter_pokedox/widgets/poke_list_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../services/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
 late final Future<List<PokemonModel>> _pokemonListFuture;

@override
void initState() {
  super.initState();
  _pokemonListFuture = PokeApi.getPokemonData();
}
  @override
  Widget build(BuildContext context) {
    debugPrint("pokemon çalıştı");
    return Scaffold(
      body: FutureBuilder<List<PokemonModel>>(
        future: _pokemonListFuture,   //initstate ederek bir kere calismasini saglicaz.
        builder: (context,snapshot) {
          if (snapshot.hasData) {
              List<PokemonModel> _listem = snapshot.data!;
              
            return
             GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
              itemCount: _listem.length,itemBuilder: (context, index) {
              debugPrint("item builder çaıştı çalıştı");
             
                return PokeListItem(pokemon: _listem[index]);
            
            },

             );
          }
          else if(snapshot.hasError){
            return const Center(
              child: Text(" error"),
            );
          } 
          else{
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
                  },
      ),

    );
  }
}