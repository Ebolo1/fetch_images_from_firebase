import 'package:fetch_images_from_firebase/model/image_model.dart';
import 'package:fetch_images_from_firebase/services/db_services.dart';
import 'package:fetch_images_from_firebase/views/home/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    StreamProvider<List<Image1>>.value(
      initialData: [],
      value: DatabaseService().images,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch from Firebase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white)
      ),
      home: const Home(),
    );
  }
}
