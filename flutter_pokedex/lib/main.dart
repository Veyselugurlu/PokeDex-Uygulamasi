import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_pokedox/pages/home_pages.dart'; // Assuming this is correctly imported
import 'package:flutter_pokedox/services/pokedex_api.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 732),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) { // Changed HomePage to _
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pokedex',
          theme: 
             ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme(),
          ),
          home: const HomePage(),
        );
      },
    );
  }
}
