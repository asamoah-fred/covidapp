import 'package:advanced_covid/core/services/locator.dart';
import 'package:advanced_covid/core/viewModels/get_countryStart_VM.dart';
import 'package:advanced_covid/ui/pages/home.dart';
import 'package:advanced_covid/ui/pages/splash.dart';
import 'package:advanced_covid/ui/sharedWidgets/navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CountryStatVM>(
          create: (context) => CountryStatVM(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Splash(),
        routes: {
          '/navigation': (context) => Navigation(),
        },
      ),
    );
  }
}
