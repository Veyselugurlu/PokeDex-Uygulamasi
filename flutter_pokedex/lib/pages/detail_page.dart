// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedox/constants/ui_helper.dart';
import 'package:flutter_pokedox/model/pokemon_model.dart';
import 'package:flutter_pokedox/widgets/pokeNameType.dart';
import 'package:flutter_pokedox/widgets/poke_information.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailPage({Key? key , required this.pokemon,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImage='images/pokeball.png';

    return ScreenUtil().orientation == Orientation.portrait ? _buildPortraitBody(context, pokeballImage)
    : _buildLandcapeBody(context, pokeballImage);
  }
  Scaffold _buildLandcapeBody(BuildContext context, String pokeballImage) 
  {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        Padding(
                  padding: UIHelper.getIconPadding(),
                  child: IconButton(
                    iconSize: 18.w,
                    onPressed: (){
                    Navigator.of(context).pop();
                  }, 
                  icon:const Icon(Icons.arrow_back_ios)),
                ),
        Expanded(
          child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  PokeNameType(pokemon: pokemon),
                  Expanded(
                    child: Hero(   //animasyon ekledik.
                    tag: pokemon.id!,
                    child: CachedNetworkImage(
                    imageUrl: pokemon.img ?? '',
                    height:0.25.sw,
                    fit: BoxFit.fitHeight,),
                                ),
                  ),
                
                ],
                ),
            ),
              Expanded(
                flex: 5,
                child: Padding(padding: 
                  UIHelper.getIconPadding(),child: PokeInformation(pokemon: pokemon))),
          ],

              )
              )
        ]
        ),
    ) ;
  }
  
  Scaffold _buildPortraitBody(BuildContext context, String pokeballImage) {
    return Scaffold(
    backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
    body: SafeArea(
      child: Column(
     crossAxisAlignment:CrossAxisAlignment.start,

      children: [
        Padding(
          padding: UIHelper.getIconPadding(),
          child: IconButton(
            iconSize: 18.w,
            onPressed: (){
            Navigator.of(context).pop();
          }, 
          icon:const Icon(Icons.arrow_back_ios)),
        ),
      PokeNameType(pokemon: pokemon), //pokemonun adını gibi detayda belirtmek istedigimiz ozellikleri getirdik.
      SizedBox(
        height:20.h ,
        ),
      Expanded(child: Stack(
        children:[
          Positioned(
            child: Image.asset(
            pokeballImage,
            height: 0.15.sh,
            fit: BoxFit.fitHeight,),
        top: 0,
        right: 0,  
        ),
        Positioned(
          top: 0.14.sh,
          bottom: 0,
          left: 0,
          right: 0,
          child:
        PokeInformation(pokemon:pokemon)),
        Align(alignment: Alignment.topCenter,
           child: Hero(   //animasyon ekledik.
            tag: pokemon.id!,
             child: CachedNetworkImage(
              imageUrl: pokemon.img ?? '',
             height:0.25.sh,
             fit: BoxFit.fitHeight,),
           ),
           )
        ],
      )),
      ],
    )),
  );
  }
}
