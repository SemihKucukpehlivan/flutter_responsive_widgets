import 'package:flutter/material.dart';

class FractionallySizedBoxScreen extends StatelessWidget {
  const FractionallySizedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('FractionallySizedBox Example'),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
            const Text(
              'The colored boxes below occupy a certain percentage of their parents\' (light blue-grey boxes) width and height. Observe the effects by rotating your device or resizing the window.', // Description in English
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            // --- Example as a Fraction of Width ---
            const Text(
              'As a Fraction of Width', // Section title in English
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Container(
              height: 100, // Fixed height for the parent container
              width: double.infinity, // Occupy full available width
              color: Colors.blueGrey[100], // Light blue-grey background
              alignment: Alignment.center,
              child: FractionallySizedBox(
                widthFactor: 0.75, // 75% of parent's width
                child: _buildColoredBox(
                  Colors.deepOrange,
                  '75% of Parent\'s Width', // Text in English
                ),
              ),
            ),
            const SizedBox(height: 30),

            // --- Example as a Fraction of Height ---
            const Text(
              'As a Fraction of Height', // Section title in English
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Container(
              height: 200, // Fixed height for the parent container
              width: 150, // Fixed width for the parent container
              color: Colors.blueGrey[100], // Light blue-grey background
              alignment: Alignment.center,
              child: FractionallySizedBox(
                heightFactor: 0.5, // 50% of parent's height
                child: _buildColoredBox(
                  Colors.green,
                  '50% of Parent\'s Height', // Text in English
                ),
              ),
            ),
            const SizedBox(height: 30),

            // --- Example as a Fraction of Both Width and Height ---
            const Text(
              'As a Fraction of Both Width and Height', // Section title in English
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Container(
              height: 250,
              width: 250,
              color: Colors.blueGrey[100], // Light blue-grey background
              alignment: Alignment.center,
              child: FractionallySizedBox(
                widthFactor: 0.8, // 80% of parent's width
                heightFactor: 0.8, // 80% of parent's height
                child: _buildColoredBox(
                  Colors.blueAccent,
                  '80% x 80% of Parent', // Text in English
                ),
              ),
            ),
            const SizedBox(height: 30),

            // --- Combination with Expanded Example ---
            const Text(
              'Combination with Expanded (Fraction of Remaining Space)', // Section title in English
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.blueGrey[100], // Light blue-grey background
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  // A fixed-width box
                  _buildColoredBox(
                    Colors.black,
                    'Fixed 50px', // Text in English
                    fixedWidth: 50.0,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    // Fills the remaining space
                    child: FractionallySizedBox(
                      alignment: Alignment
                          .centerLeft, // Aligns within the Expanded's remaining space
                      widthFactor:
                          0.7, // Occupies 70% of the space provided by Expanded
                      child: _buildColoredBox(
                        Colors.cyan,
                        '70% of Expanded Space', // Text in English
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Helper widget: Creates a colored box.
  /// fixedWidth and fixedHeight parameters are for directly setting width/height on the Container.
  Widget _buildColoredBox(
    Color color,
    String text, {
    double? fixedWidth,
    double? fixedHeight,
  }) {
    return Container(
      width: fixedWidth, // Width is passed here
      height: fixedHeight, // Height is passed here
      color: color,
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }
}
