import 'package:flutter/material.dart';

class NamaTableOrang extends StatelessWidget {
  const NamaTableOrang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pembeli dan Penjual'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Data Pembeli',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            DataTable(
              columns: [
                DataColumn(label: Text('Nama')),
                DataColumn(label: Text('Alamat')),
                DataColumn(label: Text('Nomor Telepon')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('John Doe')),
                  DataCell(Text('Jalan ABC No. 123')),
                  DataCell(Text('08123456789')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Jane Smith')),
                  DataCell(Text('Jalan XYZ No. 456')),
                  DataCell(Text('0876543210')),
                ]),
                // Tambahkan baris DataRows sesuai dengan data yang dimiliki
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Data Penjual',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            DataTable(
              columns: [
                DataColumn(label: Text('Nama')),
                DataColumn(label: Text('Alamat')),
                DataColumn(label: Text('Nomor Telepon')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Ahmad')),
                  DataCell(Text('Jalan PQR No. 789')),
                  DataCell(Text('08987654321')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Siti')),
                  DataCell(Text('Jalan LMN No. 012')),
                  DataCell(Text('08543210987')),
                ]),
                // Tambahkan baris DataRows sesuai dengan data yang dimiliki
              ],
            ),
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
      ),
    );
  }
}

