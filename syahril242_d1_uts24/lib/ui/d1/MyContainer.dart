import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: AppBar( 
          title: const Text('Home', style: TextStyle(
            color: Colors.white, )),
          backgroundColor: Colors.red
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 500,
                height: 300,
                color: Colors.amber,
                child: const Text('lorem ipsum satu')
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.red,
                child: const Icon(
                  Icons.home,
                  size: 200,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.yellow,
              ),
              Container(),
              const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text(
                'Kembali Ke Home',
                style: TextStyle(fontSize: 20),
                ),
            ),
            ],
          ),
        )
      ),
    );
  }
}