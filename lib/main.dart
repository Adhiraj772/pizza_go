// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pizza_go/helpers/Middle.dart';
import 'package:pizza_go/helpers/footer.dart';
import 'package:pizza_go/services/ManageData.dart';
import 'package:pizza_go/views/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:pizza_go/helpers/headers.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider.value(value: Headers()),
      ChangeNotifierProvider.value(value:MiddleHelpers()),
      ChangeNotifierProvider.value(value: ManageData()),
      ChangeNotifierProvider.value(value: Footers()),
    ],
      child: MaterialApp(
          title: 'PizzaGo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            primaryColor: Colors.redAccent,

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const SplashScreen()
      ),);
  }
}


