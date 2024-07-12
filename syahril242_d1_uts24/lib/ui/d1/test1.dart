
import 'package:flutter/material.dart';

class ColorfulContainers extends StatelessWidget {
  const ColorfulContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Colorful Containers'),
          leading: IconButton( // icon buttonnya disini
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 500,
                  width: 500,
                  color: Colors.red,
                  child: const Center(child: Text("Red Container")),
                  margin: const EdgeInsets.only(bottom: 50),
                ),
                Container(
                  height: 500,
                  width: 500,
                  color: Colors.green,
                  child: const Center(child: Text("Green Container")),
                  margin: const EdgeInsets.only(bottom: 50),
                ),
                Container(
                  height: 500,
                  width: 500,
                  color: Colors.blue,
                  child: const Center(child: Text("Blue Container")),
                  margin: const EdgeInsets.only(bottom: 50),
                ),
                Container(
                  height: 500,
                  width: 500,
                  color: Colors.yellow,
                  child: const Center(child: Text("Yellow Container")),
                  margin: const EdgeInsets.only(bottom: 50),
                ),
                Container(
                  height: 500,
                  width: 500,
                  color: Colors.purple,
                  child: const Center(child: Text("Purple Container")),
                  margin: const EdgeInsets.only(bottom: 50),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Kembali ke halaman awal',
                  style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


