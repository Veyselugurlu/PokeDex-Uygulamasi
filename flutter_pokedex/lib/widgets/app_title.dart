import 'package:flutter/material.dart';
import 'package:flutter_pokedox/constants/constants.dart';
import 'package:flutter_pokedox/constants/ui_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppTitle extends StatelessWidget {
      AppTitle({super.key});

String pokeballImage='images/pokeball.png';
  @override
  Widget build(BuildContext context) {
    return SizedBox(  //containere gore daha az maliyetli
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(
            alignment: Alignment.centerLeft,
            child: Text(Constants.title,style: Constants.getTitleTextStyle(),)
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              pokeballImage,
              width: ScreenUtil().orientation == Orientation.portrait 
              ? 0.17.sh 
              : 0.2.sw,
              fit: BoxFit.fitWidth,
              ),
          ),
        ],
      ),
    );
  }
}