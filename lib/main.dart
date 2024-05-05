import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:poetry/Home.dart';

void main() {
  runApp(const poetry());
}

class poetry extends StatelessWidget {
  const poetry({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Poetry',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale('ar'),
      supportedLocales: [Locale('ar', 'AE')],
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}
