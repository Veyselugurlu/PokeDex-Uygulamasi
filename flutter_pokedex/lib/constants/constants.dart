import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants{
    Constants._();
    static const String title ='Pokedex';

    static  TextStyle getTitleTextStyle(){
      return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold , 
        fontSize: _calculatorFontSize(44),
      );
    }
    static  TextStyle getPokemonTextStyle(){
      return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold , 
        fontSize: _calculatorFontSize(20),
      );
    }
    static  TextStyle getTypeChipTextStyle(){
      return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold ,
        fontSize: _calculatorFontSize(14),
      );
    }
  static _calculatorFontSize(int size){
      if (ScreenUtil().orientation == Orientation.portrait) {
        return size.sp;
      }else{
        return (size * 1.5).sp;
      }
    }

  static getPokeInfoTextStyle() {
    return TextStyle(fontSize: _calculatorFontSize(13),
    color: Colors.black);

  }
  static getPokeInfoLabelTextStyle() {
    return TextStyle(fontSize: _calculatorFontSize(16),
    fontWeight: FontWeight.bold,
    color: Colors.black);

  }
}