import 'dart:io';

import 'package:curious_ifsp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

void main() async {
  // Inicialize o Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "curious_ifsp",
    options: Platform.isLinux
        ? DefaultFirebaseOptions.web
        : DefaultFirebaseOptions.currentPlatform,
  );

  // Inicie o aplicativo Flutter
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: prefer_typing_uninitialized_variables
  late final databaseReference;
  late String value;

  @override
  void initState() {
    super.initState();
    final databaseReference = FirebaseDatabase.instance;
    init(databaseReference);
    get(databaseReference);
  }

  init(FirebaseDatabase database) async {
    await database.ref("/rooms/123").set("Olá mundo");
  }

  get(FirebaseDatabase database) async {
    database.ref("/rooms/123").onValue.listen((event) {
      final data = event.snapshot.value;
      setState(() {
        value = data.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(child: Center(child: Text(value))),
      ),
    );
  }
}
