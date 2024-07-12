import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  const Beranda ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beranda AppBar',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(
              Icons.list_rounded, // untuk mengubah iconnya
              size: 30,
            ),
          ),
          title: const Text('Latihan AppBar'),
          centerTitle: true,
          // actions: [
          //   IconButton(
          //     onPressed: () {
          //     },
          //     icon: const Icon(Icons.notifications)
          //   )
          // ],
        ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Home Page',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue,
                )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/syahril1');
              },
              child: const Text(
                'Halaman Contoh MyContainer',
                style: TextStyle(fontSize: 20),
                ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/syahril2');
              },
              child: const Text(
                'Halaman Contoh MyLayout01',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/syahril3');
              },
              child: const Text(
                'Data Diri Saya',
                style: TextStyle(fontSize: 20),
                ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/syahril4');
              },
              child: const Text(
                'Table',
                style: TextStyle(fontSize: 20),
                ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/syahril5');
              },
              child: const Text(
                'Data Mahasiswa',
                style: TextStyle(fontSize: 20),
                ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/syahril6');
              },
              child: const Text(
                'Colorful Containers test1',
                style: TextStyle(fontSize: 20),
                ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}