import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:Dashboard/constants.dart';
import 'package:Dashboard/controllers/MenuAppController.dart';
import 'package:Dashboard/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

final varelaTheme = TextTheme(
  displayLarge: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 40,
    fontWeight: FontWeight.bold,
  ),
  displayMedium: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 25,
    fontWeight: FontWeight.bold,
  ),
  displaySmall: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
  headlineMedium: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 40,
    fontWeight: FontWeight.bold,
  ),
  headlineSmall: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 25,
    fontWeight: FontWeight.bold,
  ),
  titleLarge: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 30,
    fontWeight: FontWeight.bold,
  ),
  titleMedium: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  titleSmall: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 12,
    fontWeight: FontWeight.bold,
  ),
  bodyLarge: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  bodyMedium: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
  bodySmall: TextStyle(
    color: Colors.black,
    fontFamily: 'varela',
    fontSize: 12,
    fontWeight: FontWeight.bold,
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData.light().copyWith(
        scaffoldBackgroundColor: creamColor,
        textTheme: const TextTheme(),
        canvasColor: snowColor,
      ),
      dark: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: varelaTheme,
        canvasColor: secondaryColor,
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Adaptive Theme Demo',
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => MenuAppController(),
            ),
          ],
          child: MainScreen(),
        ),
      ),
    );
  }
}
