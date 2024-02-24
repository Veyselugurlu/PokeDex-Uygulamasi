// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_pokedox/constants/constants.dart';
import 'package:flutter_pokedox/constants/ui_helper.dart';
import 'package:flutter_pokedox/pages/detail_page.dart';
import 'package:flutter_pokedox/widgets/poke_img_and_ball.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_pokedox/model/pokemon_model.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=> DetailPage(pokemon: pokemon),
          ));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w)),
        elevation: 3,
        shadowColor: Colors.amber,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
            Text(pokemon.name ?? 'N/A',
            style: Constants.getPokemonTextStyle(),
            ),
            Chip(label: Text(pokemon.type![0])),
            Expanded(child: PokeImageAndBall(pokemon:pokemon)),
          ],),
        ),
    
      ),
    );
  }
}
