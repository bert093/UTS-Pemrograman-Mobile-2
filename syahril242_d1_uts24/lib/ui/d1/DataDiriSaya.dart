import 'package:flutter/material.dart';

class DataDiriSaya extends StatelessWidget {
  const DataDiriSaya ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Diri'),
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage('assets/saya.jpg'), 
            ),
            const SizedBox(height: 20),
            const Text(
              'Nama: Syahril Karunia Pratama',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Usia: 19 tahun',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Alamat: Jl. Srigangge Blok D:5',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Email: sas992203@gmail.com',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              child: const Text(
                'Kembali Ke Home',
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
