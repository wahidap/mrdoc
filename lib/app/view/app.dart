import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mrdoc/counter/counter.dart';
import 'package:mrdoc/splashscreen/view/splashscreen.dart';
import 'package:mrdoc/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home:  SplashScreen(),
    );
  }
}
