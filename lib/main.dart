import 'package:flutter/material.dart';
import 'package:suka_nonton/data/local/hive_db.dart';
import 'package:suka_nonton/presentation/home/home_screen.dart';

void main() async {
  await HiveDb().initHiveDataBase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }

}