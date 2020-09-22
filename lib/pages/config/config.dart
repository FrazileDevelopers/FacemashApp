import 'package:Facemash/constants/facemash.dart';
import 'package:Facemash/providers/providers.dart';
import 'package:Facemash/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import '../home/HomePage.dart';
import 'package:flutter/material.dart';

class Config extends StatefulWidget {
  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: Providers.providers(),
      child: MaterialApp(
        onGenerateTitle: (BuildContext context) => S.of(context).appTitle,
        // title: Facemash.appname,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
