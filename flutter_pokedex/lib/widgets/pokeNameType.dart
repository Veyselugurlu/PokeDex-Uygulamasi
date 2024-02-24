// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_pokedox/constants/constants.dart';

import 'package:flutter_pokedox/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeNameType({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh, ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: Text(pokemon.name ?? '',style: Constants.getPokemonTextStyle(),)),
            Text('#${pokemon.num}',style: Constants.getPokemonTextStyle(),),
              ],
        ),
        SizedBox(height: 0.02.sh,),
        Chip(label: Text(
          pokemon.type?.join(' , ') ?? '',
          
          style: Constants.getTypeChipTextStyle(),))
      ],),
    );
  }
}
