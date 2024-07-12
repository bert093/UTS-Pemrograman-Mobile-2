import 'package:flutter/material.dart';

class dataMahasiswa extends StatelessWidget {
  const dataMahasiswa({super.key});
  final List<Student> students = const [
    Student(name: 'John Doe', id: '1234', department: 'Computer Science'),
    Student(name: 'Jane Smith', id: '5678', department: 'Electrical Engineering'),
    Student(name: 'Alice Johnson', id: '9012', department: 'Mechanical Engineering'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Mahasiswa'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: _buildStudentName(students[index].name),
            subtitle: Text('ID: ${students[index].id}\nDepartment: ${students[index].department}'),
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, '/');
      //   },
      //   backgroundColor: Colors.blue,
      //   child: const Icon(Icons.home),
      // ),
    );
  }

  Widget _buildStudentName(String name) {
    // Periksa jika nama adalah "Jane Smith" dan ubah warna teks menjadi merah
    if (name == 'Jane Smith') {
      return Text(
        name,
        style: const TextStyle(color: Colors.red),
      );
    }
    // Jika bukan "Jane Smith", tampilkan nama dengan warna default
    return Text(name);
  }
}

class Student {
  final String name;
  final String id;
  final String department;

  const Student({required this.name, required this.id, required this.department});
}
