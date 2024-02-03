import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unilisttask/providers/data_provider.dart';
import 'package:unilisttask/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataClass(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Universities',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const ProviderDemoScreen()),
    );
  }
}
