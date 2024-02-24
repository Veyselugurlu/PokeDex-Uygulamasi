import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper{
  UIHelper._();
  static final Map<String,Color> _typeColorMap = {
    'Grass' : Colors.green,
    'Fire' : Colors.green,
    'Water' : Colors.green,
    'Electric' : Colors.green,
    'Rock' : Colors.green,
    'Ground' : Colors.green,
    'Bug' : Colors.green,   
     'psychic' : Colors.green,
    'Fighting' : Colors.green,
    'Ghost' : Colors.green,
    'Normal' : Colors.green,
    'Poisaon' : Colors.green,
  };
  static Color getColorFromType(String type){
if (_typeColorMap.containsKey(type)) {
return _typeColorMap[type] ?? Colors.pinkAccent;  
} else{
  return  Colors.brown;
}
  }

  static double getAppTitleWidgetHeight(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw;
  }

  static EdgeInsets getDefaultPadding(){
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(12.h);
      
    }else{
      return EdgeInsets.all(8.w);
    }
  }
   static EdgeInsets getIconPadding(){
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(10.h);
      
    }else{
      return EdgeInsets.all(6.w);
    }
  }
  
  static double calculatorPokeImageAndBallSize(){
     if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.2.sw;
      
    }else{
      return 0.2.sw;
    }
  }
}