import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final String nama = 'Mohammad Isa Widianto';
  final String npm = '714240013';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Tugas Pertemuan 5',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: .min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('images/IMG-20240506-WA0003.jpg', width: 200,)),
                Text('Mohammad Isa Widianto', style: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 30),),
                Text('NPM: 714240013'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => SecondScreen(nama,npm)));
                  },
                  child: Text('Lihat Detail Profil'),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String nama;
  final String npm;
  const SecondScreen(this.nama,this.npm,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Detail Profil', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(16),
                      child: Image.asset('images/20240823_060133.jpg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(16),
                      child: Image.asset('images/IMG-20260615-WA0126.jpg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(16),
                      child: Image.asset('images/20241025_181304.jpg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(16),
                      child: Image.network('https://i.pinimg.com/236x/ca/fe/15/cafe15cffae468dd3aca3bf3de04710c.jpg?nii=t')),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(nama, style: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 26),),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('NPM: $npm', style: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 20)),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Halo semua, saya isa kelas 3A dari D4 Teknik Informatika ULBI, minat saya dibidang agrikultur. Adapun hobi, saya habiskan untuk bermain game atau nonton. informasi lainnya ukuran sepatu 40.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'RobotoCondensed',
                    ),
                ),
            ),
            OutlinedButton(
              onPressed: () {Navigator.pop(context);}, 
              child: Text('Kembali')),
          ],
        ),
      ),
    );
  }
}