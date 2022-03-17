import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Weather'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
            icon: const Icon(Icons.settings),
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
        )),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _cloudIcon(),
              _temperature(),
              _location(),
              _date(),
              _hourlyPrediction(),
              _weeklyPrediction(),
            ],
          ),
        ),
      ),
    );
  }

  final weeks = ['1', '2', '3', '1', '2', '3', '3', '1', '2', '3'];
  _weeklyPrediction() {
    return Expanded(
      child: Container(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: times.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              child: Card(
                child: Center(
                  child: Text('${times[index]}'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  final times = ['1', '2', '3', '1', '2', '3', '3', '1', '2', '3'];
  _hourlyPrediction() {
    return Container(
      height: 130,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.white),
          bottom: BorderSide(color: Colors.white),
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: times.length,
        itemBuilder: (context, index) {
          return Container(
            width: 50,
            child: Card(
              child: Center(
                child: Text('${times[index]}'),
              ),
            ),
          );
        },
      ),
    );
  }

  _date() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('Today'),
        SizedBox(
          width: 10,
        ),
        Text(
          '''20,10,20''',
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  _location() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.place),
        Text(
          'Oslo, No',
        )
      ],
    );
  }

  _temperature() {
    return const Text(
      '-10',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 80,
        fontWeight: FontWeight.w100,
      ),
    );
  }

  _cloudIcon() {
    return const Padding(
      padding: EdgeInsets.all(28.0),
      child: Icon(
        Icons.cloud,
        size: 80,
      ),
    );
  }
}
