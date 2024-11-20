import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'images/fruitpage.jpg'), // Ganti dengan path gambar Anda
              fit: BoxFit.fill, // Mengatur gambar agar memenuhi seluruh area
            ),
          ),
        ),
      ),
    );
  }
}
