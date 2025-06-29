import 'package:flutter/material.dart';

class OrientationBuilderScreen extends StatelessWidget {
  const OrientationBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('OrientationBuilder Example'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: OrientationBuilder(
          // The builder method of OrientationBuilder receives the BuildContext and the current Orientation.
          // This Orientation indicates the device's current orientation (portrait or landscape).
          builder: (BuildContext context, Orientation orientation) {
            // Check if the current orientation is portrait
            if (orientation == Orientation.portrait) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.phone_android,
                    size: 100,
                    color: Colors.green[700],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Device is in Portrait Mode',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: Colors.lightGreen[200],
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Portrait Layout',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              );
            } else {
              // If not portrait, it must be landscape
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.phone_iphone, // Representing a phone turned sideways
                    size: 100,
                    color: Colors.green[700],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Device is in Landscape Mode',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: 150,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: Colors.lightGreen[200],
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Landscape Layout',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
