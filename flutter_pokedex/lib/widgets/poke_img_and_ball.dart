// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedox/constants/ui_helper.dart';
import 'package:flutter_pokedox/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl='images/pokeball.png';

    return Stack
    (
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(pokeballImageUrl,
            width: UIHelper.calculatorPokeImageAndBallSize(),
            height: UIHelper.calculatorPokeImageAndBallSize(),
            fit: BoxFit.fitHeight,),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(  //animasyon ekledik.
            tag: pokemon.id!,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? '',
              errorWidget: (context, url, error) => Icon(Icons.safety_check_outlined),
              width: UIHelper.calculatorPokeImageAndBallSize(),
              height: UIHelper.calculatorPokeImageAndBallSize(),
              fit: BoxFit.fitHeight,
              placeholder: (context, url) => CircularProgressIndicator(
                color: Colors.greenAccent,
              ),
              ),
          ),
        )
      ],

    );
  }
}
