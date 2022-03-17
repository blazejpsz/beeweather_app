import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(Icons.home),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 199, 115, 115),
              Color.fromARGB(255, 180, 166, 94),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 210,
            right: 200,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _date(),
            ],
          ),
        ),
      ),
    );
  }
}

_date() {
  return const Text('Here can be settings');
}
