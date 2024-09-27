// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: Center(
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/foto_azhar.jpg'),
              ),
              SizedBox(height: 20),
              Text('Nama: Muhammad Azhar'),
              Text('NIM: 124220124'),
              Text('Tempat Lahir: Klaten'),
              Text('Tanggal Lahir: 11 April 2004'),
              Text('Hobi: Ngoding'),
            ],
          ),
        ),
      ),
    );
  }
}