import 'package:flutter/material.dart';
import 'package:flutter_multiple_theme/app/locator.dart';
import 'package:flutter_multiple_theme/ui/dark_light/dark_light_view.dart';
import 'package:flutter_multiple_theme/ui/multiple_themes/multiple_themes_view.dart';
import 'package:flutter_multiple_theme/ui/theme_setup.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future main() async {
  await ThemeManager.initialise();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
        themes: getThemes(),
        statusBarColorBuilder: (theme) {
          theme!.primaryColor;
        },
        // darkTheme: ThemeData(
        //   brightness: Brightness.dark,
        //   scaffoldBackgroundColor: Colors.blue.shade800,
        //   primaryColor: Colors.yellow.shade800,
        //
        // ),
        // lightTheme: ThemeData(
        //     brightness: Brightness.light,
        //     scaffoldBackgroundColor: Colors.blue.shade300,
        //     primaryColor: Colors.yellow.shade300
        // ),
        builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
              title: 'Flutter Demo',
              theme: regularTheme,
              darkTheme: darkTheme,
              themeMode: themeMode,
              home: MultipleThemesView(),
            ));
  }
}
