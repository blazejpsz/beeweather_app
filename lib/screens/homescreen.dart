import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.grey.shade900,
            Colors.black,
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
            mainAxisAlignment: MainAxisAlignment.start,
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

  final weeks = ['1', '2', '3', '1', '2', '3'];
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

  final times = ['1', '2', '3', '1', '2', '3'];
  _hourlyPrediction() {
    return Container(
      height: 100,
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
      children: const [
        Text('Today'),
        SizedBox(
          width: 10,
        ),
        Text(
          '''20,10,20''',
        )
      ],
    );
  }

  _location() {
    return Row(
      children: const [
        Icon(Icons.place),
        SizedBox(
          width: 10,
        ),
        Text(
          'Oslo, No',
        )
      ],
    );
  }

  _temperature() {
    return const Text(
      '-10',
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
