import 'package:flutter/material.dart';
import 'package:syahril242_d1_uts24/ui/d1/DataDiriSaya.dart';
import 'package:syahril242_d1_uts24/ui/d1/MyContainer.dart';
import 'package:syahril242_d1_uts24/ui/d1/MyLayout01.dart';
import 'package:syahril242_d1_uts24/ui/d1/NamaTableOrang.dart';
import 'package:syahril242_d1_uts24/ui/d1/appBar.dart';
import 'package:syahril242_d1_uts24/ui/d1/dataMahasiswa.dart';
import 'package:syahril242_d1_uts24/ui/d1/test1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main Praktikum 2',
      initialRoute: '/',
      routes: {
        '/': (context) => const Beranda(),
        '/syahril1': (context) => const MyContainer(),
       '/syahril2': (context) => const MyLayout01(),
       '/syahril3' : (context) => const DataDiriSaya(),
       '/syahril4' : (context) => const NamaTableOrang(),
       '/syahril5' : (context) => const dataMahasiswa(),
       '/syahril6' : (context) => const ColorfulContainers(),
      },
    );
  }
}
